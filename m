Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B73B3BCCF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Aug 2025 15:50:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F637615EE;
	Fri, 29 Aug 2025 13:50:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SajBVlFVo9wY; Fri, 29 Aug 2025 13:50:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E0A7615F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756475436;
	bh=dV0VetiIkZg6OKtzkxyKWCKROkMG8CWw91TX1g10wz4=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gRgNim/3ibaXi0TyAhVDn7QLyQuF3zbPJCLwlcYO8ie/lDmjGzIsnthUEGuqn4+cj
	 2jdoL116bkWIAlp+WyJ7hgUT1gnj8VcDrGUB4/gRYRoljBQKacOkArzqlGaK2lTIeD
	 AYju1QvcSc2pgs3UTaoSBgfhholwek9+/p75wLvtCrZwJT3+OR+xsuIP76P0eWmngY
	 HxWJdzVOQNd7seRz/IFv9XzLrJjmzRqvPmY+fKVKrrhKg5ybmTiSMBOVR9xpKdVk0J
	 nxDKtN0TvsOM0vbpNbSWgUXSJDuNOhfFx3g32c1fv7rDyZwGY7Wo9aecCj3LRAKYTw
	 y4Izowd/sbDaA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E0A7615F6;
	Fri, 29 Aug 2025 13:50:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 292B16C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 13:50:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1B1BF6151A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 13:50:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X268ppK8FEof for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Aug 2025 13:50:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0215E61517
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0215E61517
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0215E61517
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 13:50:33 +0000 (UTC)
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com
 [209.85.160.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-601-t0siutRoPSOHipn0tscKtw-1; Fri, 29 Aug 2025 09:50:31 -0400
X-MC-Unique: t0siutRoPSOHipn0tscKtw-1
X-Mimecast-MFC-AGG-ID: t0siutRoPSOHipn0tscKtw_1756475430
Received: by mail-oa1-f69.google.com with SMTP id
 586e51a60fabf-30cce8cffa8so506603fac.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Aug 2025 06:50:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756475430; x=1757080230;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=dV0VetiIkZg6OKtzkxyKWCKROkMG8CWw91TX1g10wz4=;
 b=KG1kDFJyEJEmgHXMH1YxSePy/4n6XYFQG5rFkRFH0cxf6WjB+xLKkG1t7DTOgr7rV4
 lp3I1AEXt3+P1j9xpeeQ/egWoPPyJ8/cZK+UX55T4nlXP6RDDIvcPFuc3v8ID3GwMI4l
 n/MAo+SvWtUInXVyC0EuwXZZAR7Ta+ztIlhJ86qmIqMtZUAjpugB7D+O5muUSvGw7PFS
 AgwPoPWuXJgXECiAkPk9qpbgujXiirJod8LPBcA740fIwCNWb2VvNnBtjS3KiMWULwAX
 EbHHagxnq0xdgOLZdPHltjNHrFMAmZREUymPKGFbZIH5WABlUEN0XjFMo+SCgQ8UxNSH
 VnzQ==
X-Gm-Message-State: AOJu0YyP90AyjeaxasoxN+BqlxfSzbUog7RdJOK/fIvxEdzZUI6zR8Ec
 bzpmq8gnyQF8paUGjRAQsBUL+LKDspct7yHUovw2m5d8UYr59jnFbVbhGEHuqwl4hbH9zO0rzoe
 mwCg01DZZq6aNckqjCDtoY9mgaFEPv/uaBSbceh5JIafR0RKLUJepKMl2xhWv1y1x5m78CZi01K
 CW+A6sSvke9kBJeApwqml8gz63iQ/9VCfcNZ6HH/3eMiNerw==
X-Gm-Gg: ASbGncs1+ROXGrLgyRf52T7OQH3TPwgSgM9UT0kn9Z38ojWQQgLu3f6c1iKwg6UXr05
 hzYcvQvZtpYKS+nkt9gepYyrJAFLWO2v4ZfdnNqNXi+D+inxRDAWgz1MWCCuG/m2em6PXNiVQ3f
 vO4BvpLZC+fHO9mTzZDIkn
X-Received: by 2002:a05:6871:5005:b0:315:8e99:1ce6 with SMTP id
 586e51a60fabf-315bfb1adb4mr325912fac.8.1756475429988; 
 Fri, 29 Aug 2025 06:50:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHBzOcyCosA1TMLZwj0/Z9Kqygb0T0L6g/fPksz6fCLVlX5p6IH1ebXqx0gMKGPOOe1s+6vva2fmraCZmI0IKg=
X-Received: by 2002:a05:6871:5005:b0:315:8e99:1ce6 with SMTP id
 586e51a60fabf-315bfb1adb4mr325901fac.8.1756475429502; Fri, 29 Aug 2025
 06:50:29 -0700 (PDT)
MIME-Version: 1.0
References: <20250827-jk-fix-i40e-ice-pxe-9k-mtu-v3-1-14341728e572@intel.com>
In-Reply-To: <20250827-jk-fix-i40e-ice-pxe-9k-mtu-v3-1-14341728e572@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Fri, 29 Aug 2025 15:50:18 +0200
X-Gm-Features: Ac12FXw6MbSN3H0zo4lHXjtWmj4bb6-ESWHDsvmVqvdLLGY_eJT2xAz1GWdnNWE
Message-ID: <CADEbmW2eDnADv78cwWRAVMuq_JrgPACbfTf_Yc_oA-Xiuv+x_w@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: NULsJPsy3IKecpKyrWln2NUwnwQNjBv2sR-mcpqM4FI_1756475430
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1756475432;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dV0VetiIkZg6OKtzkxyKWCKROkMG8CWw91TX1g10wz4=;
 b=JDVHuyTOFZ5tM8qVqyMsK48IHqcGGMnwuCCYcJNvQvDtSHbjn7AetSi4Vu5Uv6u1St2UtA
 kq4xqXF5CtXI4RJhqtTEI9OY9alQ9ATPpFlLVBYoG5b2IA+5kD/VttCK5OGkf+TfPN0U/0
 +5NvQQdQSlQx/n2E/ZEAcDp4LlVnIhM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=JDVHuyTO
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] i40e: fix Jumbo Frame
 support after iPXE boot
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 27, 2025 at 11:18=E2=80=AFPM Jacob Keller <jacob.e.keller@intel=
.com> wrote:
> The i40e hardware has multiple hardware settings which define the Maximum
> Frame Size (MFS) of the physical port. The firmware has an AdminQ command
> (0x0603) to configure the MFS, but the i40e Linux driver never issues thi=
s
> command.
>
> In most cases this is no problem, as the NVM default value has the device
> configured for its maximum value of 9728. Unfortunately, recent versions =
of
> the iPXE intelxl driver now issue the 0x0603 Set Mac Config command,
> modifying the MFS and reducing it from its default value of 9728.
>
> This occurred as part of iPXE commit 6871a7de705b ("[intelxl] Use admin
> queue to set port MAC address and maximum frame size"), a prerequisite
> change for supporting the E800 series hardware in iPXE. Both the E700 and
> E800 firmware support the AdminQ command, and the iPXE code shares much o=
f
> the logic between the two device drivers.
>
> The ice E800 Linux driver already issues the 0x0603 Set Mac Config comman=
d
> early during probe, and is thus unaffected by the iPXE change.
>
> Since commit 3a2c6ced90e1 ("i40e: Add a check to see if MFS is set"), the
> i40e driver does check the I40E_PRTGL_SAH register, but it only logs a
> warning message if its value is below the 9728 default. This register als=
o
> only covers received packets and not transmitted packets. A warning can
> inform system administrators, but does not correct the issue. No
> interactions from userspace cause the driver to write to PRTGL_SAH or iss=
ue
> the 0x0603 AdminQ command. Only a GLOBR reset will restore the value to i=
ts
> default value. There is no obvious method to trigger a GLOBR reset from
> user space.
>
> To fix this, introduce the i40e_aq_set_mac_config() function, similar to
> the one from the ice driver. Call this during early probe to ensure that
> the device configuration matches driver expectation. Unlike E800, the E70=
0
> firmware also has a bit to control whether the MAC should append CRC data=
.
> It is on by default, but setting a 0 to this bit would disable CRC. The
> i40e implementation must set this bit to ensure CRC will be appended by t=
he
> MAC.
>
> In addition to the AQ command, instead of just checking the I40E_PRTGL_SA=
H
> register, update its value to the 9728 default and write it back. This
> ensures that the hardware is in the expected state, regardless of whether
> the iPXE (or any other early boot driver) has modified this state.
>
> This is a better user experience, as we now fix the issues with larger MT=
U
> instead of merely warning. It also aligns with the way the ice E800 serie=
s
> driver works.
>
> A final note: The Fixes tag provided here is not strictly accurate. The
> issue occurs as a result of an external entity (the iPXE intelxl driver),
> and this is not a regression specifically caused by the mentioned change.
> However, I believe the original change to just warn about PRTGL_SAH being
> too low was an insufficient fix.
>
> Fixes: 3a2c6ced90e1 ("i40e: Add a check to see if MFS is set")
> Link: https://github.com/ipxe/ipxe/commit/6871a7de705b6f6a4046f0d19da9bcd=
689c3bc8e
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> Changes in v3:
> - Don't disable CRC. Otherwise, Tx traffic will not be accepted
>   appropriately.
> - Link to v2: https://lore.kernel.org/r/20250815-jk-fix-i40e-ice-pxe-9k-m=
tu-v2-1-ce857cdc6488@intel.com
>
> Changes in v2:
> - Rewrite commit message with feedback from Paul Menzel.
> - Add missing initialization of cmd via libie_aq_raw().
> - Fix the Kdoc comment for i40e_aq_set_mac_config().
> - Move clarification of the Fixes tag to the commit message.
> - Link to v1: https://lore.kernel.org/r/20250814-jk-fix-i40e-ice-pxe-9k-m=
tu-v1-1-c3926287fb78@intel.com
> ---
>  drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h |  1 +
>  drivers/net/ethernet/intel/i40e/i40e_prototype.h  |  2 ++
>  drivers/net/ethernet/intel/i40e/i40e_common.c     | 34 +++++++++++++++++=
++++++
>  drivers/net/ethernet/intel/i40e/i40e_main.c       | 17 ++++++++----
>  4 files changed, 48 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h b/drivers/=
net/ethernet/intel/i40e/i40e_adminq_cmd.h
> index 76d872b91a38..cc02a85ad42b 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_adminq_cmd.h
> @@ -1561,6 +1561,7 @@ I40E_CHECK_CMD_LENGTH(i40e_aq_set_phy_config);
>  struct i40e_aq_set_mac_config {
>         __le16  max_frame_size;
>         u8      params;
> +#define I40E_AQ_SET_MAC_CONFIG_CRC_EN  BIT(2)
>         u8      tx_timer_priority; /* bitmap */
>         __le16  tx_timer_value;
>         __le16  fc_refresh_threshold;
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/n=
et/ethernet/intel/i40e/i40e_prototype.h
> index aef5de53ce3b..26bb7bffe361 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
> @@ -98,6 +98,8 @@ int i40e_aq_set_mac_loopback(struct i40e_hw *hw,
>                              struct i40e_asq_cmd_details *cmd_details);
>  int i40e_aq_set_phy_int_mask(struct i40e_hw *hw, u16 mask,
>                              struct i40e_asq_cmd_details *cmd_details);
> +int i40e_aq_set_mac_config(struct i40e_hw *hw, u16 max_frame_size,
> +                          struct i40e_asq_cmd_details *cmd_details);
>  int i40e_aq_clear_pxe_mode(struct i40e_hw *hw,
>                            struct i40e_asq_cmd_details *cmd_details);
>  int i40e_aq_set_link_restart_an(struct i40e_hw *hw,
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/=
ethernet/intel/i40e/i40e_common.c
> index 270e7e8cf9cf..59f5c1e810eb 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_common.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
> @@ -1189,6 +1189,40 @@ int i40e_set_fc(struct i40e_hw *hw, u8 *aq_failure=
s,
>         return status;
>  }
>
> +/**
> + * i40e_aq_set_mac_config - Configure MAC settings
> + * @hw: pointer to the hw struct
> + * @max_frame_size: Maximum Frame Size to be supported by the port
> + * @cmd_details: pointer to command details structure or NULL
> + *
> + * Set MAC configuration (0x0603). Note that max_frame_size must be grea=
ter
> + * than zero.
> + *
> + * Return: 0 on success, or a negative error code on failure.
> + */
> +int i40e_aq_set_mac_config(struct i40e_hw *hw, u16 max_frame_size,
> +                          struct i40e_asq_cmd_details *cmd_details)
> +{
> +       struct i40e_aq_set_mac_config *cmd;
> +       struct libie_aq_desc desc;
> +
> +       cmd =3D libie_aq_raw(&desc);
> +
> +       if (max_frame_size =3D=3D 0)
> +               return -EINVAL;
> +
> +       i40e_fill_default_direct_cmd_desc(&desc, i40e_aqc_opc_set_mac_con=
fig);
> +
> +       cmd->max_frame_size =3D cpu_to_le16(max_frame_size);
> +       cmd->params =3D I40E_AQ_SET_MAC_CONFIG_CRC_EN;
> +
> +#define I40E_AQ_SET_MAC_CONFIG_FC_DEFAULT_THRESHOLD    0x7FFF
> +       cmd->fc_refresh_threshold =3D
> +               cpu_to_le16(I40E_AQ_SET_MAC_CONFIG_FC_DEFAULT_THRESHOLD);
> +
> +       return i40e_asq_send_command(hw, &desc, NULL, 0, cmd_details);
> +}
> +
>  /**
>   * i40e_aq_clear_pxe_mode
>   * @hw: pointer to the hw struct
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/et=
hernet/intel/i40e/i40e_main.c
> index b83f823e4917..4796fdd0b966 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -16045,13 +16045,18 @@ static int i40e_probe(struct pci_dev *pdev, con=
st struct pci_device_id *ent)
>                 dev_dbg(&pf->pdev->dev, "get supported phy types ret =3D =
 %pe last_status =3D  %s\n",
>                         ERR_PTR(err), libie_aq_str(pf->hw.aq.asq_last_sta=
tus));
>
> -       /* make sure the MFS hasn't been set lower than the default */
>  #define MAX_FRAME_SIZE_DEFAULT 0x2600
> -       val =3D FIELD_GET(I40E_PRTGL_SAH_MFS_MASK,
> -                       rd32(&pf->hw, I40E_PRTGL_SAH));
> -       if (val < MAX_FRAME_SIZE_DEFAULT)
> -               dev_warn(&pdev->dev, "MFS for port %x (%d) has been set b=
elow the default (%d)\n",
> -                        pf->hw.port, val, MAX_FRAME_SIZE_DEFAULT);
> +
> +       err =3D i40e_aq_set_mac_config(hw, MAX_FRAME_SIZE_DEFAULT, NULL);
> +       if (err) {
> +               dev_warn(&pdev->dev, "set mac config ret =3D  %pe last_st=
atus =3D  %s\n",

Just a nit:
There are double spaces here after the '=3D' signs for no good reason.
It's not just in this message. There are a few more like that in this file.

> +                        ERR_PTR(err), libie_aq_str(pf->hw.aq.asq_last_st=
atus));
> +       }
> +
> +       /* Make sure the MFS is set to the expected value */
> +       val =3D rd32(hw, I40E_PRTGL_SAH);
> +       FIELD_MODIFY(I40E_PRTGL_SAH_MFS_MASK, &val, MAX_FRAME_SIZE_DEFAUL=
T);
> +       wr32(hw, I40E_PRTGL_SAH, val);
>
>         /* Add a filter to drop all Flow control frames from any VSI from=
 being
>          * transmitted. By doing so we stop a malicious VF from sending o=
ut
>
> ---
> base-commit: ceb9515524046252c522b16f38881e8837ec0d91
> change-id: 20250813-jk-fix-i40e-ice-pxe-9k-mtu-2b6d03621cd9
>
> Best regards,
> --
> Jacob Keller <jacob.e.keller@intel.com>

Reviewed-by: Michal Schmidt <mschmidt@redhat.com>

