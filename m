Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE2863DA8E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Nov 2022 17:27:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A19C860A6D;
	Wed, 30 Nov 2022 16:27:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A19C860A6D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669825624;
	bh=sTaEyJAtUDnIb88GH/lpkZP7WzpJ378NSL4TWAJgX60=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nHumvz2Z9RuBHmpjwFPyz0ne/8COrBnQ8hcxlNr09wmQwsK70E39WV33UTpr7OvtM
	 QPaeXBr8htMwdkQF8Sog8l8OUmjqCPZCbOFhuM6ZMcbPWWHu5I2+4yinWXU/Xdy0Wa
	 53SmLV5+wvT9VITIPHSeZUwobQQIRxJqoWzTmxBhr+ZTTj7Ep4uP8tRkdtFyjVZm8e
	 DpT8rXUNV5UF8OUktg6OeXWXHnrCiZ7Qm+RQqvLQF1sx9IePfUD30Rb0FK9I2xjyYP
	 5Y4R+5j/lDpqG3lQZ7YZ/SI8+cPYa798avX9t7QahZ53u6YQyssqKCCnAce1aY0vhf
	 6J87if8bYTU+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gYZ9FPKTE5z0; Wed, 30 Nov 2022 16:27:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 120C9606AA;
	Wed, 30 Nov 2022 16:27:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 120C9606AA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E39001BF95F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 00:36:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BEBBA41675
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 00:36:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BEBBA41675
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cR5rgiffZpwH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Nov 2022 00:36:15 +0000 (UTC)
X-Greylist: delayed 00:06:34 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11BD440191
Received: from novek.ru (unknown [213.148.174.62])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 11BD440191
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Nov 2022 00:36:14 +0000 (UTC)
Received: from [192.168.0.18] (unknown [37.228.234.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by novek.ru (Postfix) with ESMTPSA id 9D698500593;
 Wed, 30 Nov 2022 03:25:09 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 novek.ru 9D698500593
Message-ID: <e840dde5-0d43-6045-4d3a-9b1146d2a6b7@novek.ru>
Date: Wed, 30 Nov 2022 00:29:26 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Vincent Mailhol <mailhol.vincent@wanadoo.fr>, Jiri Pirko
 <jiri@nvidia.com>, netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>
References: <20221129000550.3833570-1-mailhol.vincent@wanadoo.fr>
 <20221129000550.3833570-2-mailhol.vincent@wanadoo.fr>
From: Vadim Fedorenko <vfedorenko@novek.ru>
In-Reply-To: <20221129000550.3833570-2-mailhol.vincent@wanadoo.fr>
X-Mailman-Approved-At: Wed, 30 Nov 2022 16:26:57 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=novek.ru; s=mail; 
 t=1669767915; bh=948bNcSFnSb74XJ1WT4FhW6XFmmq/SdjMPP27hH5fIc=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=DxLveMIo8Nghs86ePs4/ZJF01/FEcpOn+Vtt9EZkjTrDONcf1R7EzcWkN4OI8V/fD
 vVYDSgaEzK+wNDH5RzXsiTpetpbSBGhwRr4aUd3P/KnbAbKyDXt/Tf0SvhaNwkXcj6
 wiAvJdtYfoB8g/RccgULezz/2hfhBZ09oToN2PVc=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=novek.ru header.i=@novek.ru
 header.a=rsa-sha256 header.s=mail header.b=DxLveMIo
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 1/4] net: devlink: let the
 core report the driver name instead of the drivers
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Andrew Lunn <andrew@lunn.ch>, Shijith Thotton <sthotton@marvell.com>,
 Simon Horman <simon.horman@corigine.com>, Kurt Kanzenbach <kurt@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, Jerin Jacob <jerinj@marvell.com>,
 Subbaraya Sundeep <sbhatta@marvell.com>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 drivers@pensando.io, Linu Cherian <lcherian@marvell.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, Shalom Toledo <shalomt@mellanox.com>,
 Srujana Challa <schalla@marvell.com>, Minghao Chi <chi.minghao@zte.com.cn>,
 Hao Chen <chenhao288@hisilicon.com>,
 Guangbin Huang <huangguangbin2@huawei.com>,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Vadim Fedorenko <vadfed@fb.com>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Sunil Goutham <sgoutham@marvell.com>,
 Ariel Elior <aelior@marvell.com>, Ido Schimmel <idosch@nvidia.com>,
 Richard Cochran <richardcochran@gmail.com>, Arnaud Ebalard <arno@natisbad.org>,
 Jiri Pirko <jiri@mellanox.com>, Michael Chan <michael.chan@broadcom.com>,
 Petr Machata <petrm@nvidia.com>, Salil Mehta <salil.mehta@huawei.com>,
 Dimitris Michailidis <dmichail@fungible.com>,
 Manish Chopra <manishc@marvell.com>, Boris Brezillon <bbrezillon@kernel.org>,
 oss-drivers@corigine.com, Vadim Pasternak <vadimp@mellanox.com>,
 linux-kernel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 linux-crypto@vger.kernel.org, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Geetha sowjanya <gakula@marvell.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 29.11.2022 00:05, Vincent Mailhol wrote:
> The driver name is available in device_driver::name. Right now,
> drivers still have to report this piece of information themselves in
> their devlink_ops::info_get callback function.
> 
> In order to factorize code, make devlink_nl_info_fill() add the driver
> name attribute.
> 
> nla_put() does not check if an attribute already exists and
> unconditionally reserves new space [1]. To avoid attribute
> duplication, clean-up all the drivers which are currently reporting
> the driver name in their callback.
> 
> [1] __nla_put from lib/nlattr.c
> Link: https://elixir.bootlin.com/linux/v6.0/source/lib/nlattr.c#L993
> 
> Signed-off-by: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
> Tested-by: Ido Schimmel <idosch@nvidia.com> # mlxsw

For ptp_ocp driver:
Acked-by: Vadim Fedorenko <vadfed@fb.com>

> ---
>   .../crypto/marvell/octeontx2/otx2_cpt_devlink.c |  4 ----
>   drivers/net/dsa/hirschmann/hellcreek.c          |  5 -----
>   drivers/net/dsa/mv88e6xxx/devlink.c             |  5 -----
>   drivers/net/dsa/sja1105/sja1105_devlink.c       | 12 +++---------
>   .../net/ethernet/broadcom/bnxt/bnxt_devlink.c   |  4 ----
>   .../freescale/dpaa2/dpaa2-eth-devlink.c         | 11 +----------
>   .../ethernet/fungible/funeth/funeth_devlink.c   |  2 +-
>   .../hisilicon/hns3/hns3pf/hclge_devlink.c       |  5 -----
>   .../hisilicon/hns3/hns3vf/hclgevf_devlink.c     |  5 -----
>   drivers/net/ethernet/intel/ice/ice_devlink.c    |  6 ------
>   .../ethernet/marvell/octeontx2/af/rvu_devlink.c |  2 +-
>   .../marvell/octeontx2/nic/otx2_devlink.c        |  9 +--------
>   .../marvell/prestera/prestera_devlink.c         |  5 -----
>   .../net/ethernet/mellanox/mlx5/core/devlink.c   |  4 ----
>   drivers/net/ethernet/mellanox/mlxsw/core.c      |  5 -----
>   .../net/ethernet/netronome/nfp/nfp_devlink.c    |  4 ----
>   .../net/ethernet/pensando/ionic/ionic_devlink.c |  4 ----
>   drivers/net/ethernet/qlogic/qed/qed_devlink.c   |  4 ----
>   drivers/net/netdevsim/dev.c                     |  3 ---
>   drivers/ptp/ptp_ocp.c                           |  4 ----
>   net/core/devlink.c                              | 17 +++++++++++++++++
>   21 files changed, 24 insertions(+), 96 deletions(-)
> 
> diff --git a/drivers/crypto/marvell/octeontx2/otx2_cpt_devlink.c b/drivers/crypto/marvell/octeontx2/otx2_cpt_devlink.c
> index 7503f6b18ac5..a2aba0b0d68a 100644
> --- a/drivers/crypto/marvell/octeontx2/otx2_cpt_devlink.c
> +++ b/drivers/crypto/marvell/octeontx2/otx2_cpt_devlink.c
> @@ -76,10 +76,6 @@ static int otx2_cpt_devlink_info_get(struct devlink *dl,
>   	struct otx2_cptpf_dev *cptpf = cpt_dl->cptpf;
>   	int err;
>   
> -	err = devlink_info_driver_name_put(req, "rvu_cptpf");
> -	if (err)
> -		return err;
> -
>   	err = otx2_cpt_dl_info_firmware_version_put(req, cptpf->eng_grps.grp,
>   						    "fw.ae", OTX2_CPT_AE_TYPES);
>   	if (err)
> diff --git a/drivers/net/dsa/hirschmann/hellcreek.c b/drivers/net/dsa/hirschmann/hellcreek.c
> index 951f7935c872..595a548bb0a8 100644
> --- a/drivers/net/dsa/hirschmann/hellcreek.c
> +++ b/drivers/net/dsa/hirschmann/hellcreek.c
> @@ -1176,11 +1176,6 @@ static int hellcreek_devlink_info_get(struct dsa_switch *ds,
>   				      struct netlink_ext_ack *extack)
>   {
>   	struct hellcreek *hellcreek = ds->priv;
> -	int ret;
> -
> -	ret = devlink_info_driver_name_put(req, "hellcreek");
> -	if (ret)
> -		return ret;
>   
>   	return devlink_info_version_fixed_put(req,
>   					      DEVLINK_INFO_VERSION_GENERIC_ASIC_ID,
> diff --git a/drivers/net/dsa/mv88e6xxx/devlink.c b/drivers/net/dsa/mv88e6xxx/devlink.c
> index 1266eabee086..a08dab75e0c0 100644
> --- a/drivers/net/dsa/mv88e6xxx/devlink.c
> +++ b/drivers/net/dsa/mv88e6xxx/devlink.c
> @@ -821,11 +821,6 @@ int mv88e6xxx_devlink_info_get(struct dsa_switch *ds,
>   			       struct netlink_ext_ack *extack)
>   {
>   	struct mv88e6xxx_chip *chip = ds->priv;
> -	int err;
> -
> -	err = devlink_info_driver_name_put(req, "mv88e6xxx");
> -	if (err)
> -		return err;
>   
>   	return devlink_info_version_fixed_put(req,
>   					      DEVLINK_INFO_VERSION_GENERIC_ASIC_ID,
> diff --git a/drivers/net/dsa/sja1105/sja1105_devlink.c b/drivers/net/dsa/sja1105/sja1105_devlink.c
> index 10c6fea1227f..da532614f34a 100644
> --- a/drivers/net/dsa/sja1105/sja1105_devlink.c
> +++ b/drivers/net/dsa/sja1105/sja1105_devlink.c
> @@ -120,16 +120,10 @@ int sja1105_devlink_info_get(struct dsa_switch *ds,
>   			     struct netlink_ext_ack *extack)
>   {
>   	struct sja1105_private *priv = ds->priv;
> -	int rc;
> -
> -	rc = devlink_info_driver_name_put(req, "sja1105");
> -	if (rc)
> -		return rc;
>   
> -	rc = devlink_info_version_fixed_put(req,
> -					    DEVLINK_INFO_VERSION_GENERIC_ASIC_ID,
> -					    priv->info->name);
> -	return rc;
> +	return devlink_info_version_fixed_put(req,
> +					      DEVLINK_INFO_VERSION_GENERIC_ASIC_ID,
> +					      priv->info->name);
>   }
>   
>   int sja1105_devlink_setup(struct dsa_switch *ds)
> diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c b/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
> index 8a6f788f6294..26913dc816d3 100644
> --- a/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
> +++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
> @@ -892,10 +892,6 @@ static int bnxt_dl_info_get(struct devlink *dl, struct devlink_info_req *req,
>   	u32 ver = 0;
>   	int rc;
>   
> -	rc = devlink_info_driver_name_put(req, DRV_MODULE_NAME);
> -	if (rc)
> -		return rc;
> -
>   	if (BNXT_PF(bp) && (bp->flags & BNXT_FLAG_DSN_VALID)) {
>   		sprintf(buf, "%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X",
>   			bp->dsn[7], bp->dsn[6], bp->dsn[5], bp->dsn[4],
> diff --git a/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-devlink.c b/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-devlink.c
> index 5c6dd3029e2f..76f808d38066 100644
> --- a/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-devlink.c
> +++ b/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-devlink.c
> @@ -37,18 +37,9 @@ static int dpaa2_eth_dl_info_get(struct devlink *devlink,
>   	struct dpaa2_eth_devlink_priv *dl_priv = devlink_priv(devlink);
>   	struct dpaa2_eth_priv *priv = dl_priv->dpaa2_priv;
>   	char buf[10];
> -	int err;
> -
> -	err = devlink_info_driver_name_put(req, KBUILD_MODNAME);
> -	if (err)
> -		return err;
>   
>   	scnprintf(buf, 10, "%d.%d", priv->dpni_ver_major, priv->dpni_ver_minor);
> -	err = devlink_info_version_running_put(req, "dpni", buf);
> -	if (err)
> -		return err;
> -
> -	return 0;
> +	return devlink_info_version_running_put(req, "dpni", buf);
>   }
>   
>   static struct dpaa2_eth_trap_item *
> diff --git a/drivers/net/ethernet/fungible/funeth/funeth_devlink.c b/drivers/net/ethernet/fungible/funeth/funeth_devlink.c
> index d50c222948b4..6668375edff6 100644
> --- a/drivers/net/ethernet/fungible/funeth/funeth_devlink.c
> +++ b/drivers/net/ethernet/fungible/funeth/funeth_devlink.c
> @@ -6,7 +6,7 @@
>   static int fun_dl_info_get(struct devlink *dl, struct devlink_info_req *req,
>   			   struct netlink_ext_ack *extack)
>   {
> -	return devlink_info_driver_name_put(req, KBUILD_MODNAME);
> +	return 0;
>   }
>   
>   static const struct devlink_ops fun_dl_ops = {
> diff --git a/drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_devlink.c b/drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_devlink.c
> index 4c441e6a5082..3d3b69605423 100644
> --- a/drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_devlink.c
> +++ b/drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_devlink.c
> @@ -13,11 +13,6 @@ static int hclge_devlink_info_get(struct devlink *devlink,
>   	struct hclge_devlink_priv *priv = devlink_priv(devlink);
>   	char version_str[HCLGE_DEVLINK_FW_STRING_LEN];
>   	struct hclge_dev *hdev = priv->hdev;
> -	int ret;
> -
> -	ret = devlink_info_driver_name_put(req, KBUILD_MODNAME);
> -	if (ret)
> -		return ret;
>   
>   	snprintf(version_str, sizeof(version_str), "%lu.%lu.%lu.%lu",
>   		 hnae3_get_field(hdev->fw_version, HNAE3_FW_VERSION_BYTE3_MASK,
> diff --git a/drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_devlink.c b/drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_devlink.c
> index fdc19868b818..a6c3c5e8f0ab 100644
> --- a/drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_devlink.c
> +++ b/drivers/net/ethernet/hisilicon/hns3/hns3vf/hclgevf_devlink.c
> @@ -13,11 +13,6 @@ static int hclgevf_devlink_info_get(struct devlink *devlink,
>   	struct hclgevf_devlink_priv *priv = devlink_priv(devlink);
>   	char version_str[HCLGEVF_DEVLINK_FW_STRING_LEN];
>   	struct hclgevf_dev *hdev = priv->hdev;
> -	int ret;
> -
> -	ret = devlink_info_driver_name_put(req, KBUILD_MODNAME);
> -	if (ret)
> -		return ret;
>   
>   	snprintf(version_str, sizeof(version_str), "%lu.%lu.%lu.%lu",
>   		 hnae3_get_field(hdev->fw_version, HNAE3_FW_VERSION_BYTE3_MASK,
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index 1d638216484d..ba74977e75dc 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -311,12 +311,6 @@ static int ice_devlink_info_get(struct devlink *devlink,
>   		}
>   	}
>   
> -	err = devlink_info_driver_name_put(req, KBUILD_MODNAME);
> -	if (err) {
> -		NL_SET_ERR_MSG_MOD(extack, "Unable to set driver name");
> -		goto out_free_ctx;
> -	}
> -
>   	ice_info_get_dsn(pf, ctx);
>   
>   	err = devlink_info_serial_number_put(req, ctx->buf);
> diff --git a/drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c b/drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c
> index 88dee589cb21..f15439d26d21 100644
> --- a/drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c
> +++ b/drivers/net/ethernet/marvell/octeontx2/af/rvu_devlink.c
> @@ -1550,7 +1550,7 @@ static int rvu_devlink_eswitch_mode_set(struct devlink *devlink, u16 mode,
>   static int rvu_devlink_info_get(struct devlink *devlink, struct devlink_info_req *req,
>   				struct netlink_ext_ack *extack)
>   {
> -	return devlink_info_driver_name_put(req, DRV_NAME);
> +	return 0;
>   }
>   
>   static const struct devlink_ops rvu_devlink_ops = {
> diff --git a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_devlink.c b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_devlink.c
> index 777a27047c8e..5cc6416cf1a6 100644
> --- a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_devlink.c
> +++ b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_devlink.c
> @@ -77,18 +77,11 @@ static const struct devlink_param otx2_dl_params[] = {
>   			     otx2_dl_mcam_count_validate),
>   };
>   
> -/* Devlink OPs */
>   static int otx2_devlink_info_get(struct devlink *devlink,
>   				 struct devlink_info_req *req,
>   				 struct netlink_ext_ack *extack)
>   {
> -	struct otx2_devlink *otx2_dl = devlink_priv(devlink);
> -	struct otx2_nic *pfvf = otx2_dl->pfvf;
> -
> -	if (is_otx2_vf(pfvf->pcifunc))
> -		return devlink_info_driver_name_put(req, "rvu_nicvf");
> -
> -	return devlink_info_driver_name_put(req, "rvu_nicpf");
> +	return 0;
>   }
>   
>   static const struct devlink_ops otx2_devlink_ops = {
> diff --git a/drivers/net/ethernet/marvell/prestera/prestera_devlink.c b/drivers/net/ethernet/marvell/prestera/prestera_devlink.c
> index 84ad05c9f12d..2a4c9df4eb79 100644
> --- a/drivers/net/ethernet/marvell/prestera/prestera_devlink.c
> +++ b/drivers/net/ethernet/marvell/prestera/prestera_devlink.c
> @@ -355,11 +355,6 @@ static int prestera_dl_info_get(struct devlink *dl,
>   {
>   	struct prestera_switch *sw = devlink_priv(dl);
>   	char buf[16];
> -	int err;
> -
> -	err = devlink_info_driver_name_put(req, PRESTERA_DRV_NAME);
> -	if (err)
> -		return err;
>   
>   	snprintf(buf, sizeof(buf), "%d.%d.%d",
>   		 sw->dev->fw_rev.maj,
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/devlink.c b/drivers/net/ethernet/mellanox/mlx5/core/devlink.c
> index cc2ae427dcb0..751bc4a9edcf 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/devlink.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/devlink.c
> @@ -46,10 +46,6 @@ mlx5_devlink_info_get(struct devlink *devlink, struct devlink_info_req *req,
>   	u32 running_fw, stored_fw;
>   	int err;
>   
> -	err = devlink_info_driver_name_put(req, KBUILD_MODNAME);
> -	if (err)
> -		return err;
> -
>   	err = devlink_info_version_fixed_put(req, "fw.psid", dev->board_id);
>   	if (err)
>   		return err;
> diff --git a/drivers/net/ethernet/mellanox/mlxsw/core.c b/drivers/net/ethernet/mellanox/mlxsw/core.c
> index a83f6bc30072..a0a06e2eff82 100644
> --- a/drivers/net/ethernet/mellanox/mlxsw/core.c
> +++ b/drivers/net/ethernet/mellanox/mlxsw/core.c
> @@ -1459,11 +1459,6 @@ mlxsw_devlink_info_get(struct devlink *devlink, struct devlink_info_req *req,
>   	char buf[32];
>   	int err;
>   
> -	err = devlink_info_driver_name_put(req,
> -					   mlxsw_core->bus_info->device_kind);
> -	if (err)
> -		return err;
> -
>   	mlxsw_reg_mgir_pack(mgir_pl);
>   	err = mlxsw_reg_query(mlxsw_core, MLXSW_REG(mgir), mgir_pl);
>   	if (err)
> diff --git a/drivers/net/ethernet/netronome/nfp/nfp_devlink.c b/drivers/net/ethernet/netronome/nfp/nfp_devlink.c
> index 8bfd48d50ef0..4c601ff09cd3 100644
> --- a/drivers/net/ethernet/netronome/nfp/nfp_devlink.c
> +++ b/drivers/net/ethernet/netronome/nfp/nfp_devlink.c
> @@ -239,10 +239,6 @@ nfp_devlink_info_get(struct devlink *devlink, struct devlink_info_req *req,
>   	char *buf = NULL;
>   	int err;
>   
> -	err = devlink_info_driver_name_put(req, "nfp");
> -	if (err)
> -		return err;
> -
>   	vendor = nfp_hwinfo_lookup(pf->hwinfo, "assembly.vendor");
>   	part = nfp_hwinfo_lookup(pf->hwinfo, "assembly.partno");
>   	sn = nfp_hwinfo_lookup(pf->hwinfo, "assembly.serial");
> diff --git a/drivers/net/ethernet/pensando/ionic/ionic_devlink.c b/drivers/net/ethernet/pensando/ionic/ionic_devlink.c
> index 567f778433e2..e6ff757895ab 100644
> --- a/drivers/net/ethernet/pensando/ionic/ionic_devlink.c
> +++ b/drivers/net/ethernet/pensando/ionic/ionic_devlink.c
> @@ -26,10 +26,6 @@ static int ionic_dl_info_get(struct devlink *dl, struct devlink_info_req *req,
>   	char buf[16];
>   	int err = 0;
>   
> -	err = devlink_info_driver_name_put(req, IONIC_DRV_NAME);
> -	if (err)
> -		return err;
> -
>   	err = devlink_info_version_running_put(req,
>   					       DEVLINK_INFO_VERSION_GENERIC_FW,
>   					       idev->dev_info.fw_version);
> diff --git a/drivers/net/ethernet/qlogic/qed/qed_devlink.c b/drivers/net/ethernet/qlogic/qed/qed_devlink.c
> index 6bb4e165b592..922c47797af6 100644
> --- a/drivers/net/ethernet/qlogic/qed/qed_devlink.c
> +++ b/drivers/net/ethernet/qlogic/qed/qed_devlink.c
> @@ -162,10 +162,6 @@ static int qed_devlink_info_get(struct devlink *devlink,
>   
>   	dev_info = &cdev->common_dev_info;
>   
> -	err = devlink_info_driver_name_put(req, KBUILD_MODNAME);
> -	if (err)
> -		return err;
> -
>   	memcpy(buf, cdev->hwfns[0].hw_info.part_num, sizeof(cdev->hwfns[0].hw_info.part_num));
>   	buf[sizeof(cdev->hwfns[0].hw_info.part_num)] = 0;
>   
> diff --git a/drivers/net/netdevsim/dev.c b/drivers/net/netdevsim/dev.c
> index e14686594a71..b962fc8e1397 100644
> --- a/drivers/net/netdevsim/dev.c
> +++ b/drivers/net/netdevsim/dev.c
> @@ -994,9 +994,6 @@ static int nsim_dev_info_get(struct devlink *devlink,
>   {
>   	int err;
>   
> -	err = devlink_info_driver_name_put(req, DRV_NAME);
> -	if (err)
> -		return err;
>   	err = devlink_info_version_stored_put_ext(req, "fw.mgmt", "10.20.30",
>   						  DEVLINK_INFO_VERSION_TYPE_COMPONENT);
>   	if (err)
> diff --git a/drivers/ptp/ptp_ocp.c b/drivers/ptp/ptp_ocp.c
> index 154d58cbd9ce..4bbaccd543ad 100644
> --- a/drivers/ptp/ptp_ocp.c
> +++ b/drivers/ptp/ptp_ocp.c
> @@ -1647,10 +1647,6 @@ ptp_ocp_devlink_info_get(struct devlink *devlink, struct devlink_info_req *req,
>   	char buf[32];
>   	int err;
>   
> -	err = devlink_info_driver_name_put(req, KBUILD_MODNAME);
> -	if (err)
> -		return err;
> -
>   	fw_image = bp->fw_loader ? "loader" : "fw";
>   	sprintf(buf, "%d.%d", bp->fw_tag, bp->fw_version);
>   	err = devlink_info_version_running_put(req, fw_image, buf);
> diff --git a/net/core/devlink.c b/net/core/devlink.c
> index cea154ddce7a..6478135d9ba1 100644
> --- a/net/core/devlink.c
> +++ b/net/core/devlink.c
> @@ -6749,11 +6749,24 @@ int devlink_info_version_running_put_ext(struct devlink_info_req *req,
>   }
>   EXPORT_SYMBOL_GPL(devlink_info_version_running_put_ext);
>   
> +static int devlink_nl_driver_info_get(struct device_driver *drv,
> +				      struct devlink_info_req *req)
> +{
> +	if (!drv)
> +		return 0;
> +
> +	if (drv->name[0])
> +		return devlink_info_driver_name_put(req, drv->name);
> +
> +	return 0;
> +}
> +
>   static int
>   devlink_nl_info_fill(struct sk_buff *msg, struct devlink *devlink,
>   		     enum devlink_command cmd, u32 portid,
>   		     u32 seq, int flags, struct netlink_ext_ack *extack)
>   {
> +	struct device *dev = devlink_to_dev(devlink);
>   	struct devlink_info_req req = {};
>   	void *hdr;
>   	int err;
> @@ -6771,6 +6784,10 @@ devlink_nl_info_fill(struct sk_buff *msg, struct devlink *devlink,
>   	if (err)
>   		goto err_cancel_msg;
>   
> +	err = devlink_nl_driver_info_get(dev->driver, &req);
> +	if (err)
> +		goto err_cancel_msg;
> +
>   	genlmsg_end(msg, hdr);
>   	return 0;
>   

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
