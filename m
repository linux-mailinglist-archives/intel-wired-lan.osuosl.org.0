Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED5A9A3331
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2024 05:06:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBE2C813F9;
	Fri, 18 Oct 2024 03:06:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HEqpZpbcVV6v; Fri, 18 Oct 2024 03:06:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2FFE481400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729220807;
	bh=bHf+WHQsblx0FTuV9Zj4cYix7fCh9KYy26PYZMcmuO4=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yCljBt1tM4VoLpUTgIrfCVdEw94IdkPupkq8meOtRp+41lPMn8MwYuWrbDWL9+S6v
	 L37LoM97/v7MN4CRVn4ySX7h8eLOacrmcRwNJtUmKDmi5f4mavDsMjlrao9Ufds27y
	 n6kv5bvt63Du8trx5ZmddhtIu67plbdpA/W/JOOtewqpwxhyt2LSMZSvFfbia1Yi82
	 1LTjXcP7dtq5hhZXA7gkBqf7R/7SoNMNSrm4bzVPkzSYgkSgP0kf1SCn9byvAyoQuK
	 WK1wbmmM1E9K9AF6muQuDORRdG/6ysVDAholpYtCuhMit3PpwEBW5uDs6Y51mSPm25
	 3TMYJbl0R47AQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2FFE481400;
	Fri, 18 Oct 2024 03:06:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4C5BA712
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 03:06:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 25ED04023C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 03:06:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w3uxjbn94jqZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 03:06:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::12d; helo=mail-lf1-x12d.google.com;
 envelope-from=kalesh-anakkur.purayil@broadcom.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3857440004
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3857440004
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3857440004
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 03:06:41 +0000 (UTC)
Received: by mail-lf1-x12d.google.com with SMTP id
 2adb3069b0e04-539e13375d3so1876082e87.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Oct 2024 20:06:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729220800; x=1729825600;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=bHf+WHQsblx0FTuV9Zj4cYix7fCh9KYy26PYZMcmuO4=;
 b=WYKbQ6a6xGOZBFtINLACnUQp4mVesI2hJ/LutfbCV7qb28OCyysw4bRw4mN1O86tAc
 BwpOiHu3II7mS+AanAK2NPK3DetdTRH0/9UEtQ2NycdX5qt9WERXZfsrZjEjOioIUJQL
 riAkSpPho6AJKEDaxt/mnD0DTNaN9d5uFPTkEFACu6eX9QBt18HeVAYPJ0kkvKrYfHXZ
 9iL/Gep/qiNqXektcIzEBf2FGix91L66skTx3i9tiweK9o3cb1c9AjGITP0/eFuzq/ti
 mXwzHR2xxcR+vcTL5EWOtzSKcqDURRPwDJ3ISuL1Ph5ScboD0/UXIdQXYfi7250TU092
 0FdQ==
X-Gm-Message-State: AOJu0YzrrlKzuVqjijBvu5zwxuLRi7qKRZqyb9MRYasQlkFzxWVOFtzr
 5zSHRxfjnvChWtmEFekbSge0ROvkFrVwhSHe9h/vWfHmkRq7e51UOArkWCRDMTfAPyrjrZk6NNR
 C5BBX2UHA/uuCKW/EUeZ8XAEsmqqdmAEVC9GL
X-Google-Smtp-Source: AGHT+IGiA1s2yRJsD0GIKSgVCphQm3S+lNO6hF9oc46eBdZdN++TEdvn+DAt26nklHyLtOE/+Ine3KGeDHn5sefmFuk=
X-Received: by 2002:a05:6512:4017:b0:539:f6c4:c29d with SMTP id
 2adb3069b0e04-53a1550bbc1mr355237e87.54.1729220799516; Thu, 17 Oct 2024
 20:06:39 -0700 (PDT)
MIME-Version: 1.0
References: <20241003141650.16524-1-piotr.kwapulinski@intel.com>
 <20241003141650.16524-3-piotr.kwapulinski@intel.com>
In-Reply-To: <20241003141650.16524-3-piotr.kwapulinski@intel.com>
From: Kalesh Anakkur Purayil <kalesh-anakkur.purayil@broadcom.com>
Date: Fri, 18 Oct 2024 08:36:27 +0530
Message-ID: <CAH-L+nOtsdLGoN9rVpEw3VqYmaAOShp0BbVg5YkP5BqBJdYDyQ@mail.gmail.com>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Stefan Wegrzyn <stefan.wegrzyn@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>, 
 Jan Sokolowski <jan.sokolowski@intel.com>
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
 micalg=sha-256; boundary="000000000000868a100624b797f6"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=broadcom.com; s=google; t=1729220800; x=1729825600; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=bHf+WHQsblx0FTuV9Zj4cYix7fCh9KYy26PYZMcmuO4=;
 b=M3Ypb+Pax5oV7c9JDoR5i4caPvHuPBSpkJSTB++Mmk+Objx4lKfgNRCiEzD1ofDEfH
 biYH8KXgzLkG+FgLENrELD0WwqfPhU0foVQ+r6xhV/bQTC1IQ/MAczJa+aTtbICI9nKi
 JRJ9QmUyUag0RCuvh9qs09Bz640Ty/JqDgYds=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=broadcom.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256
 header.s=google header.b=M3Ypb+Pa
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 2/7] ixgbe: Add support
 for E610 device capabilities detection
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

--000000000000868a100624b797f6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 3, 2024 at 7:48=E2=80=AFPM Piotr Kwapulinski
<piotr.kwapulinski@intel.com> wrote:
>
> Add low level support for E610 device capabilities detection. The
> capabilities are discovered via the Admin Command Interface. Discover the
> following capabilities:
> - function caps: vmdq, dcb, rss, rx/tx qs, msix, nvm, orom, reset
> - device caps: vsi, fdir, 1588
> - phy caps
>
> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

Hi Piotr,

Some minor cosmetic comments in line.

> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 540 ++++++++++++++++++
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  12 +
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |   8 +
>  3 files changed, 560 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/=
ethernet/intel/ixgbe/ixgbe_e610.c
> index 28bd7da..3bc88df 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> @@ -493,3 +493,543 @@ void ixgbe_release_res(struct ixgbe_hw *hw, enum ix=
gbe_aci_res_ids res)
>                 total_delay++;
>         }
>  }
> +
> +/**
> + * ixgbe_parse_e610_caps - Parse common device/function capabilities
> + * @hw: pointer to the HW struct
> + * @caps: pointer to common capabilities structure
> + * @elem: the capability element to parse
> + * @prefix: message prefix for tracing capabilities
> + *
> + * Given a capability element, extract relevant details into the common
> + * capability structure.
> + *
> + * Return: true if the capability matches one of the common capability i=
ds,
> + * false otherwise.
> + */
> +static bool ixgbe_parse_e610_caps(struct ixgbe_hw *hw,
> +                                 struct ixgbe_hw_caps *caps,
> +                                 struct ixgbe_aci_cmd_list_caps_elem *el=
em,
> +                                 const char *prefix)
> +{
> +       u32 logical_id =3D elem->logical_id;
> +       u32 phys_id =3D elem->phys_id;
> +       u32 number =3D elem->number;
> +       u16 cap =3D elem->cap;
> +
> +       switch (cap) {
> +       case IXGBE_ACI_CAPS_VALID_FUNCTIONS:
> +               caps->valid_functions =3D number;
> +               break;
> +       case IXGBE_ACI_CAPS_SRIOV:
> +               caps->sr_iov_1_1 =3D (number =3D=3D 1);
> +               break;
> +       case IXGBE_ACI_CAPS_VMDQ:
> +               caps->vmdq =3D (number =3D=3D 1);
> +               break;
> +       case IXGBE_ACI_CAPS_DCB:
> +               caps->dcb =3D (number =3D=3D 1);
> +               caps->active_tc_bitmap =3D logical_id;
> +               caps->maxtc =3D phys_id;
> +               break;
> +       case IXGBE_ACI_CAPS_RSS:
> +               caps->rss_table_size =3D number;
> +               caps->rss_table_entry_width =3D logical_id;
> +               break;
> +       case IXGBE_ACI_CAPS_RXQS:
> +               caps->num_rxq =3D number;
> +               caps->rxq_first_id =3D phys_id;
> +               break;
> +       case IXGBE_ACI_CAPS_TXQS:
> +               caps->num_txq =3D number;
> +               caps->txq_first_id =3D phys_id;
> +               break;
> +       case IXGBE_ACI_CAPS_MSIX:
> +               caps->num_msix_vectors =3D number;
> +               caps->msix_vector_first_id =3D phys_id;
> +               break;
> +       case IXGBE_ACI_CAPS_NVM_VER:
> +               break;
> +       case IXGBE_ACI_CAPS_MAX_MTU:
> +               caps->max_mtu =3D number;
> +               break;
> +       case IXGBE_ACI_CAPS_PCIE_RESET_AVOIDANCE:
> +               caps->pcie_reset_avoidance =3D (number > 0);
> +               break;
> +       case IXGBE_ACI_CAPS_POST_UPDATE_RESET_RESTRICT:
> +               caps->reset_restrict_support =3D (number =3D=3D 1);
> +               break;
> +       case IXGBE_ACI_CAPS_EXT_TOPO_DEV_IMG0:
> +       case IXGBE_ACI_CAPS_EXT_TOPO_DEV_IMG1:
> +       case IXGBE_ACI_CAPS_EXT_TOPO_DEV_IMG2:
> +       case IXGBE_ACI_CAPS_EXT_TOPO_DEV_IMG3:
> +       {
> +               u8 index =3D cap - IXGBE_ACI_CAPS_EXT_TOPO_DEV_IMG0;
> +
> +               caps->ext_topo_dev_img_ver_high[index] =3D number;
> +               caps->ext_topo_dev_img_ver_low[index] =3D logical_id;
> +               caps->ext_topo_dev_img_part_num[index] =3D
> +                       FIELD_GET(IXGBE_EXT_TOPO_DEV_IMG_PART_NUM_M, phys=
_id);
> +               caps->ext_topo_dev_img_load_en[index] =3D
> +                       (phys_id & IXGBE_EXT_TOPO_DEV_IMG_LOAD_EN) !=3D 0=
;
> +               caps->ext_topo_dev_img_prog_en[index] =3D
> +                       (phys_id & IXGBE_EXT_TOPO_DEV_IMG_PROG_EN) !=3D 0=
;
> +               break;
> +       }
> +       default:
> +               /* Not one of the recognized common capabilities */
> +               return false;
> +       }
> +
> +       return true;
> +}
> +
> +/**
> + * ixgbe_parse_valid_functions_cap - Parse IXGBE_ACI_CAPS_VALID_FUNCTION=
S caps
> + * @hw: pointer to the HW struct
> + * @dev_p: pointer to device capabilities structure
> + * @cap: capability element to parse
> + *
> + * Parse IXGBE_ACI_CAPS_VALID_FUNCTIONS for device capabilities.
> + */
> +static void
> +ixgbe_parse_valid_functions_cap(struct ixgbe_hw *hw,
> +                               struct ixgbe_hw_dev_caps *dev_p,
> +                               struct ixgbe_aci_cmd_list_caps_elem *cap)
> +{
> +       u32 number =3D cap->number;
[Kalesh] Do you really need a local variable here? Same comment
applies to functions below as well.
> +
> +       dev_p->num_funcs =3D hweight32(number);
> +}
> +
> +/**
> + * ixgbe_parse_vf_dev_caps - Parse IXGBE_ACI_CAPS_VF device caps
> + * @hw: pointer to the HW struct
> + * @dev_p: pointer to device capabilities structure
> + * @cap: capability element to parse
> + *
> + * Parse IXGBE_ACI_CAPS_VF for device capabilities.
> + */
> +static void ixgbe_parse_vf_dev_caps(struct ixgbe_hw *hw,
> +                                   struct ixgbe_hw_dev_caps *dev_p,
> +                                   struct ixgbe_aci_cmd_list_caps_elem *=
cap)
> +{
> +       u32 number =3D cap->number;
> +
> +       dev_p->num_vfs_exposed =3D number;
> +}
> +
> +/**
> + * ixgbe_parse_vsi_dev_caps - Parse IXGBE_ACI_CAPS_VSI device caps
> + * @hw: pointer to the HW struct
> + * @dev_p: pointer to device capabilities structure
> + * @cap: capability element to parse
> + *
> + * Parse IXGBE_ACI_CAPS_VSI for device capabilities.
> + */
> +static void ixgbe_parse_vsi_dev_caps(struct ixgbe_hw *hw,
> +                                    struct ixgbe_hw_dev_caps *dev_p,
> +                                    struct ixgbe_aci_cmd_list_caps_elem =
*cap)
> +{
> +       u32 number =3D cap->number;
> +
> +       dev_p->num_vsi_allocd_to_host =3D number;
> +}
> +
> +/**
> + * ixgbe_parse_fdir_dev_caps - Parse IXGBE_ACI_CAPS_FD device caps
> + * @hw: pointer to the HW struct
> + * @dev_p: pointer to device capabilities structure
> + * @cap: capability element to parse
> + *
> + * Parse IXGBE_ACI_CAPS_FD for device capabilities.
> + */
> +static void ixgbe_parse_fdir_dev_caps(struct ixgbe_hw *hw,
> +                                     struct ixgbe_hw_dev_caps *dev_p,
> +                                     struct ixgbe_aci_cmd_list_caps_elem=
 *cap)
> +{
> +       u32 number =3D cap->number;
> +
> +       dev_p->num_flow_director_fltr =3D number;
> +}
> +
> +/**
> + * ixgbe_parse_dev_caps - Parse device capabilities
> + * @hw: pointer to the HW struct
> + * @dev_p: pointer to device capabilities structure
> + * @buf: buffer containing the device capability records
> + * @cap_count: the number of capabilities
> + *
> + * Helper device to parse device (0x000B) capabilities list. For
> + * capabilities shared between device and function, this relies on
> + * ixgbe_parse_e610_caps.
> + *
> + * Loop through the list of provided capabilities and extract the releva=
nt
> + * data into the device capabilities structured.
> + */
> +static void ixgbe_parse_dev_caps(struct ixgbe_hw *hw,
> +                                struct ixgbe_hw_dev_caps *dev_p,
> +                                void *buf, u32 cap_count)
> +{
> +       struct ixgbe_aci_cmd_list_caps_elem *cap_resp;
> +       u32 i;
> +
> +       cap_resp =3D (struct ixgbe_aci_cmd_list_caps_elem *)buf;
> +
> +       memset(dev_p, 0, sizeof(*dev_p));
> +
> +       for (i =3D 0; i < cap_count; i++) {
> +               u16 cap =3D cap_resp[i].cap;
> +
> +               ixgbe_parse_e610_caps(hw, &dev_p->common_cap, &cap_resp[i=
],
> +                                     "dev caps");
> +
> +               switch (cap) {
> +               case IXGBE_ACI_CAPS_VALID_FUNCTIONS:
> +                       ixgbe_parse_valid_functions_cap(hw, dev_p,
> +                                                       &cap_resp[i]);
> +                       break;
> +               case IXGBE_ACI_CAPS_VF:
> +                       ixgbe_parse_vf_dev_caps(hw, dev_p, &cap_resp[i]);
> +                       break;
> +               case IXGBE_ACI_CAPS_VSI:
> +                       ixgbe_parse_vsi_dev_caps(hw, dev_p, &cap_resp[i])=
;
> +                       break;
> +               case  IXGBE_ACI_CAPS_FD:
> +                       ixgbe_parse_fdir_dev_caps(hw, dev_p, &cap_resp[i]=
);
> +                       break;
> +               default:
> +                       /* Don't list common capabilities as unknown */
> +                       break;
> +               }
> +       }
> +}
> +
> +/**
> + * ixgbe_parse_vf_func_caps - Parse IXGBE_ACI_CAPS_VF function caps
> + * @hw: pointer to the HW struct
> + * @func_p: pointer to function capabilities structure
> + * @cap: pointer to the capability element to parse
> + *
> + * Extract function capabilities for IXGBE_ACI_CAPS_VF.
> + */
> +static void ixgbe_parse_vf_func_caps(struct ixgbe_hw *hw,
> +                                    struct ixgbe_hw_func_caps *func_p,
> +                                    struct ixgbe_aci_cmd_list_caps_elem =
*cap)
> +{
> +       u32 logical_id =3D cap->logical_id;
> +       u32 number =3D cap->number;
> +
> +       func_p->num_allocd_vfs =3D number;
> +       func_p->vf_base_id =3D logical_id;
> +}
> +
> +/**
> + * ixgbe_get_num_per_func - determine number of resources per PF
> + * @hw: pointer to the HW structure
> + * @max: value to be evenly split between each PF
> + *
> + * Determine the number of valid functions by going through the bitmap r=
eturned
> + * from parsing capabilities and use this to calculate the number of res=
ources
> + * per PF based on the max value passed in.
> + *
> + * Return: the number of resources per PF or 0, if no PH are available.
> + */
> +static u32 ixgbe_get_num_per_func(struct ixgbe_hw *hw, u32 max)
> +{
> +#define IXGBE_CAPS_VALID_FUNCS_M       GENMASK(7, 0)
> +       u8 funcs =3D hweight8(hw->dev_caps.common_cap.valid_functions &
> +                           IXGBE_CAPS_VALID_FUNCS_M);
> +
> +       return funcs ? (max / funcs) : 0;
> +}
> +
> +/**
> + * ixgbe_parse_vsi_func_caps - Parse IXGBE_ACI_CAPS_VSI function caps
> + * @hw: pointer to the HW struct
> + * @func_p: pointer to function capabilities structure
> + * @cap: pointer to the capability element to parse
> + *
> + * Extract function capabilities for IXGBE_ACI_CAPS_VSI.
> + */
> +static void ixgbe_parse_vsi_func_caps(struct ixgbe_hw *hw,
> +                                     struct ixgbe_hw_func_caps *func_p,
> +                                     struct ixgbe_aci_cmd_list_caps_elem=
 *cap)
> +{
> +       func_p->guar_num_vsi =3D ixgbe_get_num_per_func(hw, IXGBE_MAX_VSI=
);
> +}
> +
> +/**
> + * ixgbe_parse_func_caps - Parse function capabilities
> + * @hw: pointer to the HW struct
> + * @func_p: pointer to function capabilities structure
> + * @buf: buffer containing the function capability records
> + * @cap_count: the number of capabilities
> + *
> + * Helper function to parse function (0x000A) capabilities list. For
> + * capabilities shared between device and function, this relies on
> + * ixgbe_parse_e610_caps.
> + *
> + * Loop through the list of provided capabilities and extract the releva=
nt
> + * data into the function capabilities structured.
> + */
> +static void ixgbe_parse_func_caps(struct ixgbe_hw *hw,
> +                                 struct ixgbe_hw_func_caps *func_p,
> +                                 void *buf, u32 cap_count)
> +{
> +       struct ixgbe_aci_cmd_list_caps_elem *cap_resp;
> +       u32 i;
> +
> +       cap_resp =3D (struct ixgbe_aci_cmd_list_caps_elem *)buf;
> +
> +       memset(func_p, 0, sizeof(*func_p));
> +
> +       for (i =3D 0; i < cap_count; i++) {
> +               u16 cap =3D cap_resp[i].cap;
> +
> +               ixgbe_parse_e610_caps(hw, &func_p->common_cap,
> +                                     &cap_resp[i], "func caps");
> +
> +               switch (cap) {
> +               case IXGBE_ACI_CAPS_VF:
> +                       ixgbe_parse_vf_func_caps(hw, func_p, &cap_resp[i]=
);
> +                       break;
> +               case IXGBE_ACI_CAPS_VSI:
> +                       ixgbe_parse_vsi_func_caps(hw, func_p, &cap_resp[i=
]);
> +                       break;
> +               default:
> +                       /* Don't list common capabilities as unknown */
> +                       break;
> +               }
> +       }
> +}
> +
> +/**
> + * ixgbe_aci_list_caps - query function/device capabilities
> + * @hw: pointer to the HW struct
> + * @buf: a buffer to hold the capabilities
> + * @buf_size: size of the buffer
> + * @cap_count: if not NULL, set to the number of capabilities reported
> + * @opc: capabilities type to discover, device or function
> + *
> + * Get the function (0x000A) or device (0x000B) capabilities description=
 from
> + * firmware and store it in the buffer.
> + *
> + * If the cap_count pointer is not NULL, then it is set to the number of
> + * capabilities firmware will report. Note that if the buffer size is to=
o
> + * small, it is possible the command will return -ENOMEM. The
> + * cap_count will still be updated in this case. It is recommended that =
the
> + * buffer size be set to IXGBE_ACI_MAX_BUFFER_SIZE (the largest possible
> + * buffer that firmware could return) to avoid this.
> + *
> + * Return: the exit code of the operation.
> + * Exit code of -ENOMEM means the buffer size is too small.
> + */
> +int ixgbe_aci_list_caps(struct ixgbe_hw *hw, void *buf, u16 buf_size,
> +                       u32 *cap_count, enum ixgbe_aci_opc opc)
> +{
> +       struct ixgbe_aci_cmd_list_caps *cmd;
> +       struct ixgbe_aci_desc desc;
> +       int err;
> +
> +       cmd =3D &desc.params.get_cap;
> +
> +       if (opc !=3D ixgbe_aci_opc_list_func_caps &&
> +           opc !=3D ixgbe_aci_opc_list_dev_caps)
> +               return -EINVAL;
> +
> +       ixgbe_fill_dflt_direct_cmd_desc(&desc, opc);
> +       err =3D ixgbe_aci_send_cmd(hw, &desc, buf, buf_size);
> +
> +       if (cap_count)
[Kalesh] Do you need a check for !err as well here?
> +               *cap_count =3D cmd->count;
> +
> +       return err;
> +}
> +
> +/**
> + * ixgbe_discover_dev_caps - Read and extract device capabilities
> + * @hw: pointer to the hardware structure
> + * @dev_caps: pointer to device capabilities structure
> + *
> + * Read the device capabilities and extract them into the dev_caps struc=
ture
> + * for later use.
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_discover_dev_caps(struct ixgbe_hw *hw,
> +                           struct ixgbe_hw_dev_caps *dev_caps)
> +{
> +       u8 *cbuf __free(kfree);
> +       u32 cap_count;
> +       int err;
> +
> +       cbuf =3D kzalloc(IXGBE_ACI_MAX_BUFFER_SIZE, GFP_KERNEL);
> +       if (!cbuf)
> +               return -ENOMEM;
> +       /* Although the driver doesn't know the number of capabilities th=
e
> +        * device will return, we can simply send a 4KB buffer, the maxim=
um
> +        * possible size that firmware can return.
> +        */
> +       cap_count =3D IXGBE_ACI_MAX_BUFFER_SIZE /
> +                   sizeof(struct ixgbe_aci_cmd_list_caps_elem);
> +
> +       err =3D ixgbe_aci_list_caps(hw, cbuf, IXGBE_ACI_MAX_BUFFER_SIZE,
> +                                 &cap_count,
> +                                 ixgbe_aci_opc_list_dev_caps);
> +       if (err)
> +               return err;
> +
> +       ixgbe_parse_dev_caps(hw, dev_caps, cbuf, cap_count);
> +
> +       return 0;
> +}
> +
> +/**
> + * ixgbe_discover_func_caps - Read and extract function capabilities
> + * @hw: pointer to the hardware structure
> + * @func_caps: pointer to function capabilities structure
> + *
> + * Read the function capabilities and extract them into the func_caps st=
ructure
> + * for later use.
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_discover_func_caps(struct ixgbe_hw *hw,
> +                            struct ixgbe_hw_func_caps *func_caps)
> +{
> +       u8 *cbuf __free(kfree);
> +       u32 cap_count;
> +       int err;
> +
> +       cbuf =3D kzalloc(IXGBE_ACI_MAX_BUFFER_SIZE, GFP_KERNEL);
> +       if (!cbuf)
> +               return -ENOMEM;
> +
> +       /* Although the driver doesn't know the number of capabilities th=
e
> +        * device will return, we can simply send a 4KB buffer, the maxim=
um
> +        * possible size that firmware can return.
> +        */
> +       cap_count =3D IXGBE_ACI_MAX_BUFFER_SIZE /
> +                   sizeof(struct ixgbe_aci_cmd_list_caps_elem);
> +
> +       err =3D ixgbe_aci_list_caps(hw, cbuf, IXGBE_ACI_MAX_BUFFER_SIZE,
> +                                 &cap_count,
> +                                 ixgbe_aci_opc_list_func_caps);
> +       if (err)
> +               return err;
> +
> +       ixgbe_parse_func_caps(hw, func_caps, cbuf, cap_count);
> +
> +       return 0;
> +}
> +
> +/**
> + * ixgbe_get_caps - get info about the HW
> + * @hw: pointer to the hardware structure
> + *
> + * Retrieve both device and function capabilities.
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_get_caps(struct ixgbe_hw *hw)
> +{
> +       int err;
> +
> +       err =3D ixgbe_discover_dev_caps(hw, &hw->dev_caps);
> +       if (err)
> +               return err;
> +
> +       return ixgbe_discover_func_caps(hw, &hw->func_caps);
> +}
> +
> +/**
> + * ixgbe_aci_disable_rxen - disable RX
> + * @hw: pointer to the HW struct
> + *
> + * Request a safe disable of Receive Enable using ACI command (0x000C).
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_aci_disable_rxen(struct ixgbe_hw *hw)
> +{
> +       struct ixgbe_aci_cmd_disable_rxen *cmd;
> +       struct ixgbe_aci_desc desc;
> +
> +       cmd =3D &desc.params.disable_rxen;
> +
> +       ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_disable_rxen=
);
> +
> +       cmd->lport_num =3D hw->bus.func;
> +
> +       return ixgbe_aci_send_cmd(hw, &desc, NULL, 0);
> +}
> +
> +/**
> + * ixgbe_aci_get_phy_caps - returns PHY capabilities
> + * @hw: pointer to the HW struct
> + * @qual_mods: report qualified modules
> + * @report_mode: report mode capabilities
> + * @pcaps: structure for PHY capabilities to be filled
> + *
> + * Returns the various PHY capabilities supported on the Port
> + * using ACI command (0x0600).
> + *
> + * Return: the exit code of the operation.
> + */
> +int ixgbe_aci_get_phy_caps(struct ixgbe_hw *hw, bool qual_mods, u8 repor=
t_mode,
> +                          struct ixgbe_aci_cmd_get_phy_caps_data *pcaps)
> +{
> +       struct ixgbe_aci_cmd_get_phy_caps *cmd;
> +       u16 pcaps_size =3D sizeof(*pcaps);
> +       struct ixgbe_aci_desc desc;
> +       int err;
> +
> +       cmd =3D &desc.params.get_phy;
> +
> +       if (!pcaps || (report_mode & ~IXGBE_ACI_REPORT_MODE_M))
> +               return -EINVAL;
> +
> +       ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_get_phy_caps=
);
> +
> +       if (qual_mods)
> +               cmd->param0 |=3D IXGBE_ACI_GET_PHY_RQM;
> +
> +       cmd->param0 |=3D report_mode;
> +       err =3D ixgbe_aci_send_cmd(hw, &desc, pcaps, pcaps_size);
> +
> +       if (!err && report_mode =3D=3D IXGBE_ACI_REPORT_TOPO_CAP_MEDIA) {
> +               hw->phy.phy_type_low =3D pcaps->phy_type_low;
> +               hw->phy.phy_type_high =3D pcaps->phy_type_high;
> +               memcpy(hw->link.link_info.module_type, &pcaps->module_typ=
e,
> +                      sizeof(hw->link.link_info.module_type));
> +       }
> +
> +       return err;
> +}
> +
> +/**
> + * ixgbe_copy_phy_caps_to_cfg - Copy PHY ability data to configuration d=
ata
> + * @caps: PHY ability structure to copy data from
> + * @cfg: PHY configuration structure to copy data to
> + *
> + * Helper function to copy data from PHY capabilities data structure
> + * to PHY configuration data structure
> + */
> +void ixgbe_copy_phy_caps_to_cfg(struct ixgbe_aci_cmd_get_phy_caps_data *=
caps,
> +                               struct ixgbe_aci_cmd_set_phy_cfg_data *cf=
g)
> +{
> +       if (!caps || !cfg)
> +               return;
> +
> +       memset(cfg, 0, sizeof(*cfg));
> +       cfg->phy_type_low =3D caps->phy_type_low;
> +       cfg->phy_type_high =3D caps->phy_type_high;
> +       cfg->caps =3D caps->caps;
> +       cfg->low_power_ctrl_an =3D caps->low_power_ctrl_an;
> +       cfg->eee_cap =3D caps->eee_cap;
> +       cfg->eeer_value =3D caps->eeer_value;
> +       cfg->link_fec_opt =3D caps->link_fec_options;
> +       cfg->module_compliance_enforcement =3D
> +               caps->module_compliance_enforcement;
> +}
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h b/drivers/net/=
ethernet/intel/ixgbe/ixgbe_e610.h
> index 18b831b..5c5a676 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
> @@ -15,5 +15,17 @@ void ixgbe_fill_dflt_direct_cmd_desc(struct ixgbe_aci_=
desc *desc, u16 opcode);
>  int ixgbe_acquire_res(struct ixgbe_hw *hw, enum ixgbe_aci_res_ids res,
>                       enum ixgbe_aci_res_access_type access, u32 timeout)=
;
>  void ixgbe_release_res(struct ixgbe_hw *hw, enum ixgbe_aci_res_ids res);
> +int ixgbe_aci_list_caps(struct ixgbe_hw *hw, void *buf, u16 buf_size,
> +                       u32 *cap_count, enum ixgbe_aci_opc opc);
> +int ixgbe_discover_dev_caps(struct ixgbe_hw *hw,
> +                           struct ixgbe_hw_dev_caps *dev_caps);
> +int ixgbe_discover_func_caps(struct ixgbe_hw *hw,
> +                            struct ixgbe_hw_func_caps *func_caps);
> +int ixgbe_get_caps(struct ixgbe_hw *hw);
> +int ixgbe_aci_disable_rxen(struct ixgbe_hw *hw);
> +int ixgbe_aci_get_phy_caps(struct ixgbe_hw *hw, bool qual_mods, u8 repor=
t_mode,
> +                          struct ixgbe_aci_cmd_get_phy_caps_data *pcaps)=
;
> +void ixgbe_copy_phy_caps_to_cfg(struct ixgbe_aci_cmd_get_phy_caps_data *=
caps,
> +                               struct ixgbe_aci_cmd_set_phy_cfg_data *cf=
g);
>
>  #endif /* _IXGBE_E610_H_ */
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/=
ethernet/intel/ixgbe/ixgbe_main.c
> index 8b8404d..0302a21 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -43,6 +43,7 @@
>  #include "ixgbe.h"
>  #include "ixgbe_common.h"
>  #include "ixgbe_dcb_82599.h"
> +#include "ixgbe_e610.h"
>  #include "ixgbe_phy.h"
>  #include "ixgbe_sriov.h"
>  #include "ixgbe_model.h"
> @@ -10932,6 +10933,13 @@ static int ixgbe_probe(struct pci_dev *pdev, con=
st struct pci_device_id *ent)
>         if (err)
>                 goto err_sw_init;
>
> +       if (adapter->hw.mac.type =3D=3D ixgbe_mac_e610) {
> +               err =3D ixgbe_get_caps(&adapter->hw);
> +               if (err)
> +                       dev_err(&pdev->dev,
> +                               "ixgbe_get_caps failed %d\n", err);
[Kalesh] You can fit this log in one line
> +       }
> +
>         if (adapter->hw.mac.type =3D=3D ixgbe_mac_82599EB)
>                 adapter->flags2 |=3D IXGBE_FLAG2_AUTO_DISABLE_VF;
>
> --
> 2.43.0
>
>


--=20
Regards,
Kalesh A P

--000000000000868a100624b797f6
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
riBJ/K1AFUjRAjFhGV64l++td7dkmnq/X8ET75ti+w1s4FRpFqkD2m7pg5NxdsZphYIXAgMBAAGj
QjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBSP8Et/qC5FJK5N
UPpjmove4t0bvDANBgkqhkiG9w0BAQsFAAOCAQEAS0DbwFCq/sgM7/eWVEVJu5YACUGssxOGhigH
M8pr5nS5ugAtrqQK0/Xx8Q+Kv3NnSoPHRHt44K9ubG8DKY4zOUXDjuS5V2yq/BKW7FPGLeQkbLmU
Y/vcU2hnVj6DuM81IcPJaP7O2sJTqsyQiunwXUaMld16WCgaLx3ezQA3QY/tRG3XUyiXfvNnBB4V
14qWtNPeTCekTBtzc3b0F5nCH3oO4y0IrQocLP88q1UOD5F+NuvDV0m+4S4tfGCLw0FREyOdzvcy
a5QBqJnnLDMfOjsl0oZAzjsshnjJYS8Uuu7bVW/fhO4FCU29KNhyztNiUGUe65KXgzHZs7XKR1g/
XzCCBWowggRSoAMCAQICDDfBRQmwNSI92mit0zANBgkqhkiG9w0BAQsFADBbMQswCQYDVQQGEwJC
RTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTExMC8GA1UEAxMoR2xvYmFsU2lnbiBHQ0MgUjMg
UGVyc29uYWxTaWduIDIgQ0EgMjAyMDAeFw0yMjA5MTAwODI5NTZaFw0yNTA5MTAwODI5NTZaMIGi
MQswCQYDVQQGEwJJTjESMBAGA1UECBMJS2FybmF0YWthMRIwEAYDVQQHEwlCYW5nYWxvcmUxFjAU
BgNVBAoTDUJyb2FkY29tIEluYy4xHzAdBgNVBAMTFkthbGVzaCBBbmFra3VyIFB1cmF5aWwxMjAw
BgkqhkiG9w0BCQEWI2thbGVzaC1hbmFra3VyLnB1cmF5aWxAYnJvYWRjb20uY29tMIIBIjANBgkq
hkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxnv1Reaeezfr6NEmg3xZlh4cz9m7QCN13+j4z1scrX+b
JfnV8xITT5yvwdQv3R3p7nzD/t29lTRWK3wjodUd2nImo6vBaH3JbDwleIjIWhDXLNZ4u7WIXYwx
aQ8lYCdKXRsHXgGPY0+zSx9ddpqHZJlHwcvas3oKnQN9WgzZtsM7A8SJefWkNvkcOtef6bL8Ew+3
FBfXmtsPL9I2vita8gkYzunj9Nu2IM+MnsP7V/+Coy/yZDtFJHp30hDnYGzuOhJchDF9/eASvE8T
T1xqJODKM9xn5xXB1qezadfdgUs8k8QAYyP/oVBafF9uqDudL6otcBnziyDBQdFCuAQN7wIDAQAB
o4IB5DCCAeAwDgYDVR0PAQH/BAQDAgWgMIGjBggrBgEFBQcBAQSBljCBkzBOBggrBgEFBQcwAoZC
aHR0cDovL3NlY3VyZS5nbG9iYWxzaWduLmNvbS9jYWNlcnQvZ3NnY2NyM3BlcnNvbmFsc2lnbjJj
YTIwMjAuY3J0MEEGCCsGAQUFBzABhjVodHRwOi8vb2NzcC5nbG9iYWxzaWduLmNvbS9nc2djY3Iz
cGVyc29uYWxzaWduMmNhMjAyMDBNBgNVHSAERjBEMEIGCisGAQQBoDIBKAowNDAyBggrBgEFBQcC
ARYmaHR0cHM6Ly93d3cuZ2xvYmFsc2lnbi5jb20vcmVwb3NpdG9yeS8wCQYDVR0TBAIwADBJBgNV
HR8EQjBAMD6gPKA6hjhodHRwOi8vY3JsLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNp
Z24yY2EyMDIwLmNybDAuBgNVHREEJzAlgSNrYWxlc2gtYW5ha2t1ci5wdXJheWlsQGJyb2FkY29t
LmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNVHSMEGDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGP
zzAdBgNVHQ4EFgQUI3+tdStI+ABRGSqksMsiCmO9uDAwDQYJKoZIhvcNAQELBQADggEBAGfe1o9b
4wUud0FMjb/FNdc433meL15npjdYWUeioHdlCGB5UvEaMGu71QysfoDOfUNeyO9YKp0h0fm7clvo
cBqeWe4CPv9TQbmLEtXKdEpj5kFZBGmav69mGTlu1A9KDQW3y0CDzCPG2Fdm4s73PnkwvemRk9E2
u9/kcZ8KWVeS+xq+XZ78kGTKQ6Wii3dMK/EHQhnDfidadoN/n+x2ySC8yyDNvy81BocnblQzvbuB
a30CvRuhokNO6Jzh7ZFtjKVMzYas3oo6HXgA+slRszMu4pc+fRPO41FHjeDM76e6P5OnthhnD+NY
x6xokUN65DN1bn2MkeNs0nQpizDqd0QxggJtMIICaQIBATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYD
VQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhHbG9iYWxTaWduIEdDQyBSMyBQZXJzb25h
bFNpZ24gMiBDQSAyMDIwAgw3wUUJsDUiPdpordMwDQYJYIZIAWUDBAIBBQCggdQwLwYJKoZIhvcN
AQkEMSIEIBNDfDKdLWLOcMnmZe5LO9tJl4Mc0vvUxnctbdNJFH0EMBgGCSqGSIb3DQEJAzELBgkq
hkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI0MTAxODAzMDY0MFowaQYJKoZIhvcNAQkPMVwwWjAL
BglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG
9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATANBgkqhkiG9w0BAQEFAASCAQC0DFWz3Jco
4T0sU6WEbKU6xP+v0/h0UIMKOBlPn3buKepisNZQ0FOzn+hN6n0tJMgaCfoUpfWQyOiVWy4Ye8tH
pC6wfOBonNxfCLMJgyyVMq5vq1zZ/mkp0/OC9iMOR+mB3/juEYQYx6EABqMk99AGOui4V1J0xsKV
1+NTMc73b0lkBzZgfdMoGYinUTGzhSP+NeaZS05t5DM1IjkPbvx70Yaq8Vg3lxEbkFfxZUwWrl0h
fImx9SZ89bqVi1g77LciNyTWOn3NU95q+F6dab1HrjfF2PfWhOS3v7mf1cCSj8zTZeBRrJTOGPmw
mOi/l5TI7mD9xvJ6lA86Wv/Pjgl/
--000000000000868a100624b797f6--
