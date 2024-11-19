Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE979D217D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Nov 2024 09:20:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B154A60A54;
	Tue, 19 Nov 2024 08:20:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IsjRVgOUW5O0; Tue, 19 Nov 2024 08:20:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 865B96065C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732004415;
	bh=N1CXWCUIN02YGV/rD9pOZpyC66KfILNm9G423syFn+E=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9bkGIxyd32/MQXQlZ8HSrHuXKCZ9Dop/FLstck6baslf2+otluCrVFVGG8AgucynJ
	 qPmU3nSrwz8fEayKaT9o2fjLZv9J9HyKBfWEbFZjDFLkb0rgFzRbrL6jwgTbIhYdU3
	 hpqLTHBu4mDH6R/RHU3vEoZ6+HJaIMeolXsPwuMclSA1Ks94FH1aNvM5p/0hzz9lpq
	 AfPMTj1YBxHY7aL/BkljJNf4R6wO6qPAt4bjBMpgam6Iw2GNkoB5gtAeMXw1DbsIdL
	 VfjAgZMLEFtx7cqt/98EpG0jS/8XOIoGiOkFLRx9EZFBUaAT0yPvHE7dk3i+GAk9uL
	 Jgy/uXAFy0wSg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 865B96065C;
	Tue, 19 Nov 2024 08:20:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 25F6B27EB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2024 08:20:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 219A184D08
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2024 08:20:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6GWdgilIihgE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Nov 2024 08:20:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D955184DCB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D955184DCB
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D955184DCB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2024 08:20:12 +0000 (UTC)
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com
 [209.85.167.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-509-vaL54H1iNr2wqCCZpECEJA-1; Tue, 19 Nov 2024 03:20:09 -0500
X-MC-Unique: vaL54H1iNr2wqCCZpECEJA-1
X-Mimecast-MFC-AGG-ID: vaL54H1iNr2wqCCZpECEJA
Received: by mail-oi1-f198.google.com with SMTP id
 5614622812f47-3e65ee715eeso497598b6e.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Nov 2024 00:20:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732004409; x=1732609209;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=N1CXWCUIN02YGV/rD9pOZpyC66KfILNm9G423syFn+E=;
 b=bbJpj7TZ1td4XRN3xzGwfHpG1H6bGzrDPIklhnjuVZb039p5n2SsMwhUIq//MkyCyU
 5GbSZjHpay9coqQ7KKyI/DW94yeLPMUnNtXdtd+86WS48P5kilPx8T+lGw3Gj9rV4buA
 ZUB+wGAY5IYxl/uxyXXFDpoPviE3x0lb7A6SxryNUMgv57p/u+czX4qswV2cnLnQ7klY
 3MvlhVlHh5RFVF9TQyI8kUaz7+umdSbdqJt/qCYbNxnEoVGfr9QCyfP01onzQ5VpYIiu
 EncPxmec6LGIULrsYpTzjZojR/jRj65G0i//C8eoHkjzkGYeXEKLEIWBV89H0MYQOwWp
 vTng==
X-Gm-Message-State: AOJu0YwGP363wJwAs3OsHBpXC4EgIIN85LPFoPpgEnnXA87POFoYAZQy
 q1Nx1hx9JRuS0YH4iqvvNdKkY/cblVfeJxip4Z4S6fZ2KL0C3t9/rUK7x36S9kRsE2uHblCprCL
 aoQjTQdboqu1gF3U2fWLkB6ux7hAkkN6eI96zXGdD7mdhaan1EInec0Ri7pVYoK/vUzZdSiej9f
 yRj+d4tDCXqK2MxGGCzPuqJcW5vwn6HbMI7GkMLqkD9A==
X-Gm-Gg: ASbGncv6YVtjRC0SPdCHAEkPfIhHU8cyKlQCAfFKIMmEwS6HbSXYhx1QznxpOL/DvTp
 MPASN81849o+uaxdCXFuqLBicFDfmOLQ=
X-Received: by 2002:a05:6870:7906:b0:285:82b3:6313 with SMTP id
 586e51a60fabf-2962dd36d65mr3241691fac.6.1732004408833; 
 Tue, 19 Nov 2024 00:20:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEVej4KCimNB7KEy4PUfgoVZNkglQWU1zdKBUn/nZrc5o20NvTcXpXkLvp2atTFp53OWYaPthw/YPmVvvtETQo=
X-Received: by 2002:a05:6870:7906:b0:285:82b3:6313 with SMTP id
 586e51a60fabf-2962dd36d65mr3241676fac.6.1732004408418; Tue, 19 Nov 2024
 00:20:08 -0800 (PST)
MIME-Version: 1.0
References: <20241115194216.2718660-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20241115194216.2718660-1-aleksandr.loktionov@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Tue, 19 Nov 2024 09:19:56 +0100
Message-ID: <CADEbmW0vc-M+xEHCeL+92TecJTNRB_GvzsBjAaMz8n2kCjT3mw@mail.gmail.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com, 
 netdev@vger.kernel.org, Jan Sokolowski <jan.sokolowski@intel.com>, 
 Padraig J Connolly <padraig.j.connolly@intel.com>, maciej.fijalkowski@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: p8dkyrj-CPA80WpG7OXwYnJeRmFCDElTrJq0lVUpdaE_1732004409
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1732004411;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=N1CXWCUIN02YGV/rD9pOZpyC66KfILNm9G423syFn+E=;
 b=D1zI5YB45mrqmoKvT6TWcpZSbhphWv3RM6XdVFu2PoYJW0l945H8GY8nsf0ju+BWuMFkdD
 96v3JrBM0aXH6k0mDhkdHkWcouXriy7STtRw0ZBXb+jp/oOHIYji+0o9Iud1NHchfu6JWP
 2VU7zujKAesulZBMQPHAUoH0nvqJG8U=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=D1zI5YB4
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5] i40e: add ability to
 reset VF for Tx and Rx MDD events
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

On Fri, Nov 15, 2024 at 8:42=E2=80=AFPM Aleksandr Loktionov
<aleksandr.loktionov@intel.com> wrote:
> Implement "mdd-auto-reset-vf" priv-flag to handle Tx and Rx MDD events fo=
r VFs.
> This flag is also used in other network adapters like ICE.
>
> Usage:
> - "on"  - The problematic VF will be automatically reset
>           if a malformed descriptor is detected.
> - "off" - The problematic VF will be disabled.
>
> In cases where a VF sends malformed packets classified as malicious, it c=
an
> cause the Tx queue to freeze, rendering it unusable for several minutes. =
When
> an MDD event occurs, this new implementation allows for a graceful VF res=
et to
> quickly restore operational state.
>
> Currently, VF queues are disabled if an MDD event occurs. This patch adds=
 the
> ability to reset the VF if a Tx or Rx MDD event occurs. It also includes =
MDD
> event logging throttling to avoid dmesg pollution and unifies the format =
of
> Tx and Rx MDD messages.
>
> Note: Standard message rate limiting functions like dev_info_ratelimited(=
)
> do not meet our requirements. Custom rate limiting is implemented,
> please see the code for details.
>
> Co-developed-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Co-developed-by: Padraig J Connolly <padraig.j.connolly@intel.com>
> Signed-off-by: Padraig J Connolly <padraig.j.connolly@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v4->v5 + documentation - 2nd clear_bit(__I40E_MDD_EVENT_PENDING) * rate l=
imit
> v3->v4 refactor two helper functions into one
> v2->v3 fix compilation issue
> v1->v2 fix compilation issue
> ---
>  .../device_drivers/ethernet/intel/i40e.rst    |  12 ++
>  drivers/net/ethernet/intel/i40e/i40e.h        |   4 +-
>  .../net/ethernet/intel/i40e/i40e_debugfs.c    |   2 +-
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    |   2 +
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 107 +++++++++++++++---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |   2 +-
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  11 +-
>  7 files changed, 123 insertions(+), 17 deletions(-)
[...]
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/et=
hernet/intel/i40e/i40e_main.c
> index cbcfada..b1f7316 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -11189,22 +11189,88 @@ static void i40e_handle_reset_warning(struct i4=
0e_pf *pf, bool lock_acquired)
>         i40e_reset_and_rebuild(pf, false, lock_acquired);
>  }
>
> +/**
> + * i40e_print_vf_mdd_event - print VF Tx/Rx malicious driver detect even=
t
> + * @pf: board private structure
> + * @vf: pointer to the VF structure
> + * @is_tx: true - for Tx event, false - for  Rx
> + */
> +static void i40e_print_vf_mdd_event(struct i40e_pf *pf, struct i40e_vf *=
vf,
> +                                      bool is_tx)
> +{
> +       dev_err(&pf->pdev->dev, is_tx ?
> +               "%lld Tx Malicious Driver Detection events detected on PF=
 %d VF %d MAC %pm. mdd-auto-reset-vfs=3D%s\n" :
> +               "%lld Rx Malicious Driver Detection events detected on PF=
 %d VF %d MAC %pm. mdd-auto-reset-vfs=3D%s\n",

I disagree with your argument from the v3 thread about greppability.
I think using "%lld %cx [...]" and
  is_tx ? 'T' : 'R',
the string would still be easy enough to grep for.
But opinions may vary about this. So

Reviewed-by: Michal Schmidt <mschmidt@redhat.com>




> +               is_tx ? vf->mdd_tx_events.count : vf->mdd_rx_events.count=
,
> +               pf->hw.pf_id,
> +               vf->vf_id,
> +               vf->default_lan_addr.addr,
> +               str_on_off(test_bit(I40E_FLAG_MDD_AUTO_RESET_VF, pf->flag=
s)));
> +}
> +
> +/**
> + * i40e_print_vfs_mdd_events - print VFs malicious driver detect event
> + * @pf: pointer to the PF structure
> + *
> + * Called from i40e_handle_mdd_event to rate limit and print VFs MDD eve=
nts.
> + */
> +static void i40e_print_vfs_mdd_events(struct i40e_pf *pf)
> +{
> +       unsigned int i;
> +
> +       /* check that there are pending MDD events to print */
> +       if (!test_and_clear_bit(__I40E_MDD_VF_PRINT_PENDING, pf->state))
> +               return;
> +
> +       if (!__ratelimit(&pf->mdd_message_rate_limit))
> +               return;
> +
> +       for (i =3D 0; i < pf->num_alloc_vfs; i++) {
> +               struct i40e_vf *vf =3D &pf->vf[i];
> +               bool is_printed =3D false;
> +
> +               /* only print Rx MDD event message if there are new event=
s */
> +               if (vf->mdd_rx_events.count !=3D vf->mdd_rx_events.last_p=
rinted) {
> +                       vf->mdd_rx_events.last_printed =3D vf->mdd_rx_eve=
nts.count;
> +                       i40e_print_vf_mdd_event(pf, vf, false);
> +                       is_printed =3D true;
> +               }
> +
> +               /* only print Tx MDD event message if there are new event=
s */
> +               if (vf->mdd_tx_events.count !=3D vf->mdd_tx_events.last_p=
rinted) {
> +                       vf->mdd_tx_events.last_printed =3D vf->mdd_tx_eve=
nts.count;
> +                       i40e_print_vf_mdd_event(pf, vf, true);
> +                       is_printed =3D true;
> +               }
> +
> +               if (is_printed && !test_bit(I40E_FLAG_MDD_AUTO_RESET_VF, =
pf->flags))
> +                       dev_info(&pf->pdev->dev,
> +                                "Use PF Control I/F to re-enable the VF =
#%d\n",
> +                                i);
> +       }
> +}
> +
>  /**
>   * i40e_handle_mdd_event
>   * @pf: pointer to the PF structure
>   *
>   * Called from the MDD irq handler to identify possibly malicious vfs
>   **/
>  static void i40e_handle_mdd_event(struct i40e_pf *pf)
>  {
>         struct i40e_hw *hw =3D &pf->hw;
>         bool mdd_detected =3D false;
>         struct i40e_vf *vf;
>         u32 reg;
>         int i;
>
> -       if (!test_bit(__I40E_MDD_EVENT_PENDING, pf->state))
> +       if (!test_and_clear_bit(__I40E_MDD_EVENT_PENDING, pf->state)) {
> +               /* Since the VF MDD event logging is rate limited, check =
if
> +                * there are pending MDD events.
> +                */
> +               i40e_print_vfs_mdd_events(pf);
>                 return;
> +       }
>
>         /* find what triggered the MDD event */
>         reg =3D rd32(hw, I40E_GL_MDET_TX);
> @@ -11248,36 +11314,48 @@ static void i40e_handle_mdd_event(struct i40e_p=
f *pf)
>
>         /* see if one of the VFs needs its hand slapped */
>         for (i =3D 0; i < pf->num_alloc_vfs && mdd_detected; i++) {
> +               bool is_mdd_on_tx =3D false;
> +               bool is_mdd_on_rx =3D false;
> +
>                 vf =3D &(pf->vf[i]);
>                 reg =3D rd32(hw, I40E_VP_MDET_TX(i));
>                 if (reg & I40E_VP_MDET_TX_VALID_MASK) {
> +                       set_bit(__I40E_MDD_VF_PRINT_PENDING, pf->state);
>                         wr32(hw, I40E_VP_MDET_TX(i), 0xFFFF);
> -                       vf->num_mdd_events++;
> -                       dev_info(&pf->pdev->dev, "TX driver issue detecte=
d on VF %d\n",
> -                                i);
> -                       dev_info(&pf->pdev->dev,
> -                                "Use PF Control I/F to re-enable the VF\=
n");
> +                       vf->mdd_tx_events.count++;
>                         set_bit(I40E_VF_STATE_DISABLED, &vf->vf_states);
> +                       is_mdd_on_tx =3D true;
>                 }
>
>                 reg =3D rd32(hw, I40E_VP_MDET_RX(i));
>                 if (reg & I40E_VP_MDET_RX_VALID_MASK) {
> +                       set_bit(__I40E_MDD_VF_PRINT_PENDING, pf->state);
>                         wr32(hw, I40E_VP_MDET_RX(i), 0xFFFF);
> -                       vf->num_mdd_events++;
> -                       dev_info(&pf->pdev->dev, "RX driver issue detecte=
d on VF %d\n",
> -                                i);
> -                       dev_info(&pf->pdev->dev,
> -                                "Use PF Control I/F to re-enable the VF\=
n");
> +                       vf->mdd_rx_events.count++;
>                         set_bit(I40E_VF_STATE_DISABLED, &vf->vf_states);
> +                       is_mdd_on_rx =3D true;
> +               }
> +
> +               if ((is_mdd_on_tx || is_mdd_on_rx) &&
> +                   test_bit(I40E_FLAG_MDD_AUTO_RESET_VF, pf->flags)) {
> +                       /* VF MDD event counters will be cleared by
> +                        * reset, so print the event prior to reset.
> +                        */
> +                       if (is_mdd_on_rx)
> +                               i40e_print_vf_mdd_event(pf, vf, false);
> +                       if (is_mdd_on_tx)
> +                               i40e_print_vf_mdd_event(pf, vf, true);
> +
> +                       i40e_vc_reset_vf(vf, true);
>                 }
>         }
>
> -       /* re-enable mdd interrupt cause */
> -       clear_bit(__I40E_MDD_EVENT_PENDING, pf->state);
>         reg =3D rd32(hw, I40E_PFINT_ICR0_ENA);
>         reg |=3D  I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK;
>         wr32(hw, I40E_PFINT_ICR0_ENA, reg);
>         i40e_flush(hw);
> +
> +       i40e_print_vfs_mdd_events(pf);
>  }
>
>  /**
> @@ -15970,6 +16048,9 @@ static int i40e_probe(struct pci_dev *pdev, const=
 struct pci_device_id *ent)
>                          ERR_PTR(err),
>                          i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status))=
;
>
> +       /* VF MDD event logs are rate limited to one second intervals */
> +       ratelimit_state_init(&pf->mdd_message_rate_limit, 1 * HZ, 1);
> +
>         /* Reconfigure hardware for allowing smaller MSS in the case
>          * of TSO, so that we avoid the MDD being fired and causing
>          * a reset in the case of small MSS+TSO.
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers=
/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 662622f..5b4618e 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -216,7 +216,7 @@ void i40e_vc_notify_vf_reset(struct i40e_vf *vf)
>   * @notify_vf: notify vf about reset or not
>   * Reset VF handler.
>   **/
> -static void i40e_vc_reset_vf(struct i40e_vf *vf, bool notify_vf)
> +void i40e_vc_reset_vf(struct i40e_vf *vf, bool notify_vf)
>  {
>         struct i40e_pf *pf =3D vf->pf;
>         int i;
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h b/drivers=
/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> index 66f95e2..5cf74f1 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h
> @@ -64,6 +64,12 @@ struct i40evf_channel {
>         u64 max_tx_rate; /* bandwidth rate allocation for VSIs */
>  };
>
> +struct i40e_mdd_vf_events {
> +       u64 count;      /* total count of Rx|Tx events */
> +       /* count number of the last printed event */
> +       u64 last_printed;
> +};
> +
>  /* VF information structure */
>  struct i40e_vf {
>         struct i40e_pf *pf;
> @@ -92,7 +98,9 @@ struct i40e_vf {
>
>         u8 num_queue_pairs;     /* num of qps assigned to VF vsis */
>         u8 num_req_queues;      /* num of requested qps */
> -       u64 num_mdd_events;     /* num of mdd events detected */
> +       /* num of mdd tx and rx events detected */
> +       struct i40e_mdd_vf_events mdd_rx_events;
> +       struct i40e_mdd_vf_events mdd_tx_events;
>
>         unsigned long vf_caps;  /* vf's adv. capabilities */
>         unsigned long vf_states;        /* vf's runtime states */
> @@ -120,6 +128,7 @@ int i40e_alloc_vfs(struct i40e_pf *pf, u16 num_alloc_=
vfs);
>  int i40e_vc_process_vf_msg(struct i40e_pf *pf, s16 vf_id, u32 v_opcode,
>                            u32 v_retval, u8 *msg, u16 msglen);
>  int i40e_vc_process_vflr_event(struct i40e_pf *pf);
> +void i40e_vc_reset_vf(struct i40e_vf *vf, bool notify_vf);
>  bool i40e_reset_vf(struct i40e_vf *vf, bool flr);
>  bool i40e_reset_all_vfs(struct i40e_pf *pf, bool flr);
>  void i40e_vc_notify_vf_reset(struct i40e_vf *vf);
> --
> 2.25.1
>

