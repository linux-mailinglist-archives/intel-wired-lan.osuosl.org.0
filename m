Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B341D8730C7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Mar 2024 09:33:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C4E67410C7;
	Wed,  6 Mar 2024 08:33:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2FQlxz1YUWvo; Wed,  6 Mar 2024 08:33:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9245841744
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709713987;
	bh=+0Tkyj8sbGLUcurKuxUwXPk3KTdbL7smGP+jSfDQWV4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k8DzGst121irM7Meg7R0D3RD2ZhDmfSdRueSdF/NuKaqU29gjvDG4G1ttPkvUaJDI
	 /oqNWrchWj80xDpOyljyAkBzMcTGR1fWwfAr4xjUJVDEHg6kmiJ6xDXCxcDbBjhuy3
	 shX1uVyaVmbmHL2q5pb7vF/je0tZ63Ynr69WEHgdW0W1FvD7IBgffHQlvUL6zJk71O
	 FZg3P6Zoo2EANp5Le9Epeq4OLO2NQQf8GwhxCbCe3Q2djgHc5semomAiOhpbOix0g8
	 I8e/dtIMSt4N4WRuWbvrkfUWj+P8G0E7fg+ZmF6a9roEwgh/qygog6CtCFp3FgoH8v
	 EarlCv6TkaUxw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9245841744;
	Wed,  6 Mar 2024 08:33:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6B3C31BF20B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 08:33:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 616C9822F3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 08:33:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6nK7Rk773E_b for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 08:33:02 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::329; helo=mail-wm1-x329.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1E1E2822EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1E1E2822EC
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1E1E2822EC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 08:33:00 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 5b1f17b1804b1-412eddd14b9so10935795e9.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 06 Mar 2024 00:32:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709713978; x=1710318778;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+0Tkyj8sbGLUcurKuxUwXPk3KTdbL7smGP+jSfDQWV4=;
 b=cJjQS/93/6b8o+BvPqXLCR5ckbCbg7itl/xZzF/J9Rsn+/HhiYoqePz8ZbrvY87ueu
 G59EO8vOskv23o/kTYTtLTA6R7HBvj6ZpN7XJqt/GGn4CtHSrvTH3bDAln21ancEbKKD
 LoHPJc6/RxV/DDYxrOpfy4PUvbo0eIaf0KsuatmWLdD14TDcdAqJkE9bt/xAGwg8o1SX
 ONJEj7Ht3eVN1nitzf05fcNUrD8UycqqV324FsOn22c6+uED5qnKddpRH8lYGkhGw0zr
 0sFAa64/boDh3s7G4Y1NS7a5e4Fiel8TCooXb/FAOKZSHMhcuuWcU8lslCH3aQhTNbeb
 GH6g==
X-Gm-Message-State: AOJu0YxrtV0q8gRUkF9g/tLqqAzFLCW3klXXKhYNzqKx6NqM87onAPue
 fAWRERikwVsN2kbvtQpQe3HrkN3aN00NrOJ8WZ5ggFmz/fFsuhFH/dUfitURJ5U=
X-Google-Smtp-Source: AGHT+IFNIE3wnoy3lNujqk7nQtu4ySa2uEuDEUiUDDaGVNShXlyIw/uLJVnrjCGNCNp21zrpC2UGFg==
X-Received: by 2002:a05:600c:1d16:b0:412:b0cc:1c62 with SMTP id
 l22-20020a05600c1d1600b00412b0cc1c62mr10161383wms.32.1709713977677; 
 Wed, 06 Mar 2024 00:32:57 -0800 (PST)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 r9-20020a05600c458900b00412b3bf811bsm20160373wmo.8.2024.03.06.00.32.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Mar 2024 00:32:56 -0800 (PST)
Date: Wed, 6 Mar 2024 09:32:53 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <ZegqNZULwmHjC9oA@nanopsycho>
References: <20240305143942.23757-1-mateusz.polchlopek@intel.com>
 <20240305143942.23757-2-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240305143942.23757-2-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1709713978; x=1710318778;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=+0Tkyj8sbGLUcurKuxUwXPk3KTdbL7smGP+jSfDQWV4=;
 b=YlkVw2YzIBBEuQnZcsTrew9BSXCfMfUQbfsxBlBxmJD/MkOl4hJJzkPRCdor/JzOFV
 uudO1ylEq5PDljgg1WBV99s0aK2wVqmOCML9anRYXjBquNqKMsIjG8vpVsaf4n+Dtr7A
 iQ3y2ynVb5i2JhDoa0k2iFaeD2/eiZC6VdsA1+Y1o0Qynwo4NGwjHdoMAYjLPF1pkjjX
 4lRRaj75xmb20WQb1V5xF3cSyv4EUeTR2AVWmg6vq+6ZE+nzPDrCBWGm2FbEUeB2ZU90
 vkwrjo6wyKIcH5k9NXzRGLC5I/33K7scGqMXeP2Df1mx3m02dAYgWJBjwgeAkmVUQSZo
 62Cw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=YlkVw2Yz
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 1/6] devlink: extend
 devlink_param *set pointer
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
Cc: andrew@lunn.ch, michal.wilczynski@intel.com, netdev@vger.kernel.org,
 lukasz.czapnik@intel.com, victor.raj@intel.com, kuba@kernel.org,
 anthony.l.nguyen@intel.com, horms@kernel.org, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Mar 05, 2024 at 03:39:37PM CET, mateusz.polchlopek@intel.com wrote:
>Extend devlink_param *set function pointer to take extack as a param.
>Sometimes it is needed to pass information to the end user from set
>function. It is more proper to use for that netlink instead of passing
>message to dmesg.
>
>Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>---
> .../net/ethernet/broadcom/bnxt/bnxt_devlink.c |  6 ++--
> drivers/net/ethernet/intel/ice/ice_devlink.c  | 36 +++++++++----------
> drivers/net/ethernet/mellanox/mlx4/main.c     |  6 ++--
> .../net/ethernet/mellanox/mlx5/core/eswitch.c |  3 +-
> .../mellanox/mlx5/core/eswitch_offloads.c     |  3 +-
> .../net/ethernet/mellanox/mlx5/core/fs_core.c |  3 +-
> .../ethernet/mellanox/mlx5/core/fw_reset.c    |  3 +-
> .../mellanox/mlxsw/spectrum_acl_tcam.c        |  3 +-
> .../ethernet/netronome/nfp/devlink_param.c    |  3 +-
> drivers/net/ethernet/qlogic/qed/qed_devlink.c |  3 +-
> drivers/net/wwan/iosm/iosm_ipc_devlink.c      |  3 +-
> include/net/devlink.h                         |  3 +-
> include/net/dsa.h                             |  3 +-
> net/devlink/param.c                           |  7 ++--
> net/dsa/devlink.c                             |  3 +-
> 15 files changed, 50 insertions(+), 38 deletions(-)
>
>diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c b/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
>index ae4529c043f0..d9ea6fa23923 100644
>--- a/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
>+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
>@@ -1096,7 +1096,8 @@ static int bnxt_dl_nvm_param_get(struct devlink *dl, u32 id,
> }
> 
> static int bnxt_dl_nvm_param_set(struct devlink *dl, u32 id,
>-				 struct devlink_param_gset_ctx *ctx)
>+				 struct devlink_param_gset_ctx *ctx,
>+				 struct netlink_ext_ack *extack)
> {
> 	struct bnxt *bp = bnxt_get_bp_from_dl(dl);
> 	struct hwrm_nvm_set_variable_input *req;
>@@ -1145,7 +1146,8 @@ static int bnxt_remote_dev_reset_get(struct devlink *dl, u32 id,
> }
> 
> static int bnxt_remote_dev_reset_set(struct devlink *dl, u32 id,
>-				     struct devlink_param_gset_ctx *ctx)
>+				     struct devlink_param_gset_ctx *ctx,
>+				     struct netlink_ext_ack *extack)
> {
> 	struct bnxt *bp = bnxt_get_bp_from_dl(dl);
> 	int rc;
>diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
>index b516e42b41f0..c0a89a1b4e88 100644
>--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>@@ -1380,9 +1380,8 @@ static const struct devlink_ops ice_devlink_ops = {
> 	.rate_node_parent_set = ice_devlink_set_parent,
> };
> 
>-static int
>-ice_devlink_enable_roce_get(struct devlink *devlink, u32 id,
>-			    struct devlink_param_gset_ctx *ctx)
>+static int ice_devlink_enable_roce_get(struct devlink *devlink, u32 id,
>+				       struct devlink_param_gset_ctx *ctx)

Hmm. This hunk does not seem related to the rest of the patch. Please
remove.

Feel free to add my:
Suggested-by: Jiri Pirko <jiri@nvidia.com>
Reviewed-by: Jiri Pirko <jiri@nvidia.com>

after that.

pw-bot: cr



> {
> 	struct ice_pf *pf = devlink_priv(devlink);
> 
>@@ -1391,9 +1390,9 @@ ice_devlink_enable_roce_get(struct devlink *devlink, u32 id,
> 	return 0;
> }
> 
>-static int
>-ice_devlink_enable_roce_set(struct devlink *devlink, u32 id,
>-			    struct devlink_param_gset_ctx *ctx)
>+static int ice_devlink_enable_roce_set(struct devlink *devlink, u32 id,
>+				       struct devlink_param_gset_ctx *ctx,
>+				       struct netlink_ext_ack *extack)
> {
> 	struct ice_pf *pf = devlink_priv(devlink);
> 	bool roce_ena = ctx->val.vbool;
>@@ -1413,10 +1412,9 @@ ice_devlink_enable_roce_set(struct devlink *devlink, u32 id,
> 	return ret;
> }
> 
>-static int
>-ice_devlink_enable_roce_validate(struct devlink *devlink, u32 id,
>-				 union devlink_param_value val,
>-				 struct netlink_ext_ack *extack)
>+static int ice_devlink_enable_roce_validate(struct devlink *devlink, u32 id,
>+					    union devlink_param_value val,
>+					    struct netlink_ext_ack *extack)
> {
> 	struct ice_pf *pf = devlink_priv(devlink);
> 
>@@ -1431,9 +1429,8 @@ ice_devlink_enable_roce_validate(struct devlink *devlink, u32 id,
> 	return 0;
> }
> 
>-static int
>-ice_devlink_enable_iw_get(struct devlink *devlink, u32 id,
>-			  struct devlink_param_gset_ctx *ctx)
>+static int ice_devlink_enable_iw_get(struct devlink *devlink, u32 id,
>+				     struct devlink_param_gset_ctx *ctx)
> {
> 	struct ice_pf *pf = devlink_priv(devlink);
> 
>@@ -1442,9 +1439,9 @@ ice_devlink_enable_iw_get(struct devlink *devlink, u32 id,
> 	return 0;
> }
> 
>-static int
>-ice_devlink_enable_iw_set(struct devlink *devlink, u32 id,
>-			  struct devlink_param_gset_ctx *ctx)
>+static int ice_devlink_enable_iw_set(struct devlink *devlink, u32 id,
>+				     struct devlink_param_gset_ctx *ctx,
>+				     struct netlink_ext_ack *extack)
> {
> 	struct ice_pf *pf = devlink_priv(devlink);
> 	bool iw_ena = ctx->val.vbool;
>@@ -1464,10 +1461,9 @@ ice_devlink_enable_iw_set(struct devlink *devlink, u32 id,
> 	return ret;
> }
> 
>-static int
>-ice_devlink_enable_iw_validate(struct devlink *devlink, u32 id,
>-			       union devlink_param_value val,
>-			       struct netlink_ext_ack *extack)
>+static int ice_devlink_enable_iw_validate(struct devlink *devlink, u32 id,
>+					  union devlink_param_value val,
>+					  struct netlink_ext_ack *extack)
> {
> 	struct ice_pf *pf = devlink_priv(devlink);
> 
>diff --git a/drivers/net/ethernet/mellanox/mlx4/main.c b/drivers/net/ethernet/mellanox/mlx4/main.c
>index 7b02ff61126d..98688e4dbec5 100644
>--- a/drivers/net/ethernet/mellanox/mlx4/main.c
>+++ b/drivers/net/ethernet/mellanox/mlx4/main.c
>@@ -185,7 +185,8 @@ static int mlx4_devlink_ierr_reset_get(struct devlink *devlink, u32 id,
> }
> 
> static int mlx4_devlink_ierr_reset_set(struct devlink *devlink, u32 id,
>-				       struct devlink_param_gset_ctx *ctx)
>+				       struct devlink_param_gset_ctx *ctx,
>+				       struct netlink_ext_ack *extack)
> {
> 	mlx4_internal_err_reset = ctx->val.vbool;
> 	return 0;
>@@ -202,7 +203,8 @@ static int mlx4_devlink_crdump_snapshot_get(struct devlink *devlink, u32 id,
> }
> 
> static int mlx4_devlink_crdump_snapshot_set(struct devlink *devlink, u32 id,
>-					    struct devlink_param_gset_ctx *ctx)
>+					    struct devlink_param_gset_ctx *ctx,
>+					    struct netlink_ext_ack *extack)
> {
> 	struct mlx4_priv *priv = devlink_priv(devlink);
> 	struct mlx4_dev *dev = &priv->dev;
>diff --git a/drivers/net/ethernet/mellanox/mlx5/core/eswitch.c b/drivers/net/ethernet/mellanox/mlx5/core/eswitch.c
>index 3047d7015c52..a86f9c335b6b 100644
>--- a/drivers/net/ethernet/mellanox/mlx5/core/eswitch.c
>+++ b/drivers/net/ethernet/mellanox/mlx5/core/eswitch.c
>@@ -1805,7 +1805,8 @@ static int mlx5_esw_vports_init(struct mlx5_eswitch *esw)
> }
> 
> static int mlx5_devlink_esw_multiport_set(struct devlink *devlink, u32 id,
>-					  struct devlink_param_gset_ctx *ctx)
>+					  struct devlink_param_gset_ctx *ctx,
>+					  struct netlink_ext_ack *extack)
> {
> 	struct mlx5_core_dev *dev = devlink_priv(devlink);
> 
>diff --git a/drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads.c b/drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads.c
>index b0455134c98e..3d8b3ca681d0 100644
>--- a/drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads.c
>+++ b/drivers/net/ethernet/mellanox/mlx5/core/eswitch_offloads.c
>@@ -2405,7 +2405,8 @@ static int esw_offloads_init_reps(struct mlx5_eswitch *esw)
> }
> 
> static int esw_port_metadata_set(struct devlink *devlink, u32 id,
>-				 struct devlink_param_gset_ctx *ctx)
>+				 struct devlink_param_gset_ctx *ctx,
>+				 struct netlink_ext_ack *extack)
> {
> 	struct mlx5_core_dev *dev = devlink_priv(devlink);
> 	struct mlx5_eswitch *esw = dev->priv.eswitch;
>diff --git a/drivers/net/ethernet/mellanox/mlx5/core/fs_core.c b/drivers/net/ethernet/mellanox/mlx5/core/fs_core.c
>index e6bfa7e4f146..8a941c0b4497 100644
>--- a/drivers/net/ethernet/mellanox/mlx5/core/fs_core.c
>+++ b/drivers/net/ethernet/mellanox/mlx5/core/fs_core.c
>@@ -3321,7 +3321,8 @@ static int mlx5_fs_mode_validate(struct devlink *devlink, u32 id,
> }
> 
> static int mlx5_fs_mode_set(struct devlink *devlink, u32 id,
>-			    struct devlink_param_gset_ctx *ctx)
>+			    struct devlink_param_gset_ctx *ctx,
>+			    struct netlink_ext_ack *extack)
> {
> 	struct mlx5_core_dev *dev = devlink_priv(devlink);
> 	enum mlx5_flow_steering_mode mode;
>diff --git a/drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c b/drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c
>index f27eab6e4929..1237b7fb5cef 100644
>--- a/drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c
>+++ b/drivers/net/ethernet/mellanox/mlx5/core/fw_reset.c
>@@ -52,7 +52,8 @@ static void mlx5_set_fw_rst_ack(struct mlx5_core_dev *dev)
> }
> 
> static int mlx5_fw_reset_enable_remote_dev_reset_set(struct devlink *devlink, u32 id,
>-						     struct devlink_param_gset_ctx *ctx)
>+						     struct devlink_param_gset_ctx *ctx,
>+						     struct netlink_ext_ack *extack)
> {
> 	struct mlx5_core_dev *dev = devlink_priv(devlink);
> 	struct mlx5_fw_reset *fw_reset;
>diff --git a/drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c b/drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c
>index f20052776b3f..baedf0d45e85 100644
>--- a/drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c
>+++ b/drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_tcam.c
>@@ -1465,7 +1465,8 @@ mlxsw_sp_acl_tcam_region_rehash_intrvl_get(struct devlink *devlink, u32 id,
> 
> static int
> mlxsw_sp_acl_tcam_region_rehash_intrvl_set(struct devlink *devlink, u32 id,
>-					   struct devlink_param_gset_ctx *ctx)
>+					   struct devlink_param_gset_ctx *ctx,
>+					   struct netlink_ext_ack *extack)
> {
> 	struct mlxsw_core *mlxsw_core = devlink_priv(devlink);
> 	struct mlxsw_sp_acl_tcam_vregion *vregion;
>diff --git a/drivers/net/ethernet/netronome/nfp/devlink_param.c b/drivers/net/ethernet/netronome/nfp/devlink_param.c
>index a655f9e69a7b..0e1a3800f371 100644
>--- a/drivers/net/ethernet/netronome/nfp/devlink_param.c
>+++ b/drivers/net/ethernet/netronome/nfp/devlink_param.c
>@@ -132,7 +132,8 @@ nfp_devlink_param_u8_get(struct devlink *devlink, u32 id,
> 
> static int
> nfp_devlink_param_u8_set(struct devlink *devlink, u32 id,
>-			 struct devlink_param_gset_ctx *ctx)
>+			 struct devlink_param_gset_ctx *ctx,
>+			 struct netlink_ext_ack *extack)
> {
> 	const struct nfp_devlink_param_u8_arg *arg;
> 	struct nfp_pf *pf = devlink_priv(devlink);
>diff --git a/drivers/net/ethernet/qlogic/qed/qed_devlink.c b/drivers/net/ethernet/qlogic/qed/qed_devlink.c
>index dad8e617c393..1adc7fbb3f2f 100644
>--- a/drivers/net/ethernet/qlogic/qed/qed_devlink.c
>+++ b/drivers/net/ethernet/qlogic/qed/qed_devlink.c
>@@ -132,7 +132,8 @@ static int qed_dl_param_get(struct devlink *dl, u32 id,
> }
> 
> static int qed_dl_param_set(struct devlink *dl, u32 id,
>-			    struct devlink_param_gset_ctx *ctx)
>+			    struct devlink_param_gset_ctx *ctx,
>+			    struct netlink_ext_ack *extack)
> {
> 	struct qed_devlink *qed_dl = devlink_priv(dl);
> 	struct qed_dev *cdev;
>diff --git a/drivers/net/wwan/iosm/iosm_ipc_devlink.c b/drivers/net/wwan/iosm/iosm_ipc_devlink.c
>index 2fe724d623c0..bef6819986e9 100644
>--- a/drivers/net/wwan/iosm/iosm_ipc_devlink.c
>+++ b/drivers/net/wwan/iosm/iosm_ipc_devlink.c
>@@ -33,7 +33,8 @@ static int ipc_devlink_get_param(struct devlink *dl, u32 id,
> 
> /* Set the param values for the specific param ID's */
> static int ipc_devlink_set_param(struct devlink *dl, u32 id,
>-				 struct devlink_param_gset_ctx *ctx)
>+				 struct devlink_param_gset_ctx *ctx,
>+				 struct netlink_ext_ack *extack)
> {
> 	struct iosm_devlink *ipc_devlink = devlink_priv(dl);
> 
>diff --git a/include/net/devlink.h b/include/net/devlink.h
>index 9ac394bdfbe4..12f14be44e53 100644
>--- a/include/net/devlink.h
>+++ b/include/net/devlink.h
>@@ -483,7 +483,8 @@ struct devlink_param {
> 	int (*get)(struct devlink *devlink, u32 id,
> 		   struct devlink_param_gset_ctx *ctx);
> 	int (*set)(struct devlink *devlink, u32 id,
>-		   struct devlink_param_gset_ctx *ctx);
>+		   struct devlink_param_gset_ctx *ctx,
>+		   struct netlink_ext_ack *extack);
> 	int (*validate)(struct devlink *devlink, u32 id,
> 			union devlink_param_value val,
> 			struct netlink_ext_ack *extack);
>diff --git a/include/net/dsa.h b/include/net/dsa.h
>index 7c0da9effe4e..140b80e1a88c 100644
>--- a/include/net/dsa.h
>+++ b/include/net/dsa.h
>@@ -1247,7 +1247,8 @@ struct dsa_switch_ops {
> int dsa_devlink_param_get(struct devlink *dl, u32 id,
> 			  struct devlink_param_gset_ctx *ctx);
> int dsa_devlink_param_set(struct devlink *dl, u32 id,
>-			  struct devlink_param_gset_ctx *ctx);
>+			  struct devlink_param_gset_ctx *ctx,
>+			  struct netlink_ext_ack *extack);
> int dsa_devlink_params_register(struct dsa_switch *ds,
> 				const struct devlink_param *params,
> 				size_t params_count);
>diff --git a/net/devlink/param.c b/net/devlink/param.c
>index 22bc3b500518..dcf0d1ccebba 100644
>--- a/net/devlink/param.c
>+++ b/net/devlink/param.c
>@@ -158,11 +158,12 @@ static int devlink_param_get(struct devlink *devlink,
> 
> static int devlink_param_set(struct devlink *devlink,
> 			     const struct devlink_param *param,
>-			     struct devlink_param_gset_ctx *ctx)
>+			     struct devlink_param_gset_ctx *ctx,
>+			     struct netlink_ext_ack *extack)
> {
> 	if (!param->set)
> 		return -EOPNOTSUPP;
>-	return param->set(devlink, param->id, ctx);
>+	return param->set(devlink, param->id, ctx, extack);
> }
> 
> static int
>@@ -571,7 +572,7 @@ static int __devlink_nl_cmd_param_set_doit(struct devlink *devlink,
> 			return -EOPNOTSUPP;
> 		ctx.val = value;
> 		ctx.cmode = cmode;
>-		err = devlink_param_set(devlink, param, &ctx);
>+		err = devlink_param_set(devlink, param, &ctx, info->extack);
> 		if (err)
> 			return err;
> 	}
>diff --git a/net/dsa/devlink.c b/net/dsa/devlink.c
>index 431bf52290a1..0aac887d0098 100644
>--- a/net/dsa/devlink.c
>+++ b/net/dsa/devlink.c
>@@ -194,7 +194,8 @@ int dsa_devlink_param_get(struct devlink *dl, u32 id,
> EXPORT_SYMBOL_GPL(dsa_devlink_param_get);
> 
> int dsa_devlink_param_set(struct devlink *dl, u32 id,
>-			  struct devlink_param_gset_ctx *ctx)
>+			  struct devlink_param_gset_ctx *ctx,
>+			  struct netlink_ext_ack *extack)
> {
> 	struct dsa_switch *ds = dsa_devlink_to_ds(dl);
> 
>-- 
>2.38.1
>
