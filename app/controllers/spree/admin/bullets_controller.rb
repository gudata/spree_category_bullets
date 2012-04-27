class Spree::Admin::BulletsController < Spree::Admin::BaseController
  respond_to :html

  before_filter :load_parent
  
  def index
    @bullets = Spree::Bullet.sorted_by_image_code.where(:taxon_id => @taxon.id)
    respond_with(:admin, @taxonomy, @taxon) 
  end
  
  def new
    @bullet = Spree::Bullet.new(:taxon_id => @taxon.id, :is_active => true)
  end
  
  def create
    @bullet = Spree::Bullet.new(params[:bullet].merge(:taxon_id => @taxon.id))
    
    if @bullet.save
      flash[:notice] = t(:successfully_created_bullet)
      redirect_to admin_taxonomy_taxon_bullets_url(@taxonomy, @taxon)
    else
      respond_with(@bullet)
      flash[:error] = t(:error_creating)
    end
    
  end
  
  def update
    if @bullet.update_attributes(params[:bullet])
      flash.notice = t(:successfully_updated_bullet)
      redirect_to admin_taxonomy_taxon_bullets_url(@taxonomy, @taxon)
    else
      respond_with(@bullet)
    end
  end

    
  def destroy
    if @bullet.destroy
      flash[:notice] = t(:successfully_removed_bullet)
    else
      flash[:error] = t(:error_deleting)
    end
    redirect_to admin_taxonomy_taxon_bullets_url(@taxonomy, @taxon)
  end
  
  private
  def load_parent
    @taxonomy = Spree::Taxonomy.find(params[:taxonomy_id])
    @taxon = @taxonomy.taxons.find(params[:taxon_id])
    @bullet = Spree::Bullet.find(params[:id]) if params[:id]
  end
end