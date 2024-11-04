Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB689BB926
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 16:41:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3544D80F01;
	Mon,  4 Nov 2024 15:41:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yRgyFCzmfngR; Mon,  4 Nov 2024 15:41:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52C7680F04
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730734867;
	bh=lS1nNVVujw4czQIQmdBkpFCJWF8p7dDW3pFP3fBwFhk=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lrY7dm90jmo3tz7qcmuTjnrhmPTvMsLBbw/9RJcX3mbzdGl8GIxbmmXkzGDdNcm0h
	 EIyloiq5G2KTrjsC9yBkIEmPco9F1MMmswdbyFS1Bcd1L2A9w3jXFbpUccIkkHXvLG
	 cTnpES60mYkmEhTGm6mRuoCrt7tUrShRxom05c1v6FfV2a1IoFhCvCyfedD3Bj7erV
	 G0vdWztm85Z3JUhdiXYowpIjS/pbC3KvAIokOAcYU8W4G/RqUrRObIAlmp6KicwLSO
	 HvqSpuF5c+zO5CtiTTGRy8/Y7FosPltomPeDcEExKJ4VzuwlFiqwsESayJ+pVIYZTH
	 YJmGDB1nTmOeA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52C7680F04;
	Mon,  4 Nov 2024 15:41:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 345DD962
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 15:41:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2253580F01
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 15:41:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iulyCHKJTefw for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 15:41:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C863780EFE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C863780EFE
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C863780EFE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 15:41:03 +0000 (UTC)
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com
 [209.85.161.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-134-ivw9GV0gOZyTk_5p_ETY8Q-1; Mon, 04 Nov 2024 10:41:00 -0500
X-MC-Unique: ivw9GV0gOZyTk_5p_ETY8Q-1
Received: by mail-oo1-f69.google.com with SMTP id
 006d021491bc7-5eb5ee84601so219450eaf.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 04 Nov 2024 07:41:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730734859; x=1731339659;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=lS1nNVVujw4czQIQmdBkpFCJWF8p7dDW3pFP3fBwFhk=;
 b=iL4Oevg2X4s4dWP1agf+wGj4iqoh4A7kBfkiT0cKT3KxOmt5bEC23dKAotg/1eKPkf
 D/3796gW5F1u4iIftde+rEw6ZyZHYOC4a/FmygG9wFhx/YkPzk/32qhJh75DLAzMI6fS
 E/DJrPJtfwSIr9yjC6LTvNsQjVI9GpOCwscv639+kDQZFxxRjLNm3ZlPf9DE2QcRCdYx
 z974Ex6uPwG5Z6YvzjQKLLqcQq6EiRkFpjv9qW30KJnJ/3iAdugcQCDYzoAaA6e8EmmE
 STX29hpk5WQfpB54HzR9kKyJGUlIawRkUNr/zcaCBiM+44t6WP41vTS0OqsKoNI66tgE
 lARQ==
X-Gm-Message-State: AOJu0Yy+ELxEpJin4Ctu2sTidIuuSfy1vSHHhPOJHT8R9RKpN6TJXDe9
 T2ohvQD8gRyaqAUj5aQOFKvnZohev33q9HiLTPuUQucXfkve9G1nd5bnitZCYqAhRN0/JtfCDuW
 yvMwElDzqNEGrCoChAxzLPUrVbpiGMQl6IoWwGsukI2fi2k3W28zxMDRu4KjTeIFLAIwa9wK68M
 WRIZ104+KIWcWgi7Sr4F4P2AB0Kh+YhY6fiH3YoexI4Q==
X-Received: by 2002:a05:6871:5821:b0:277:db1c:7c6a with SMTP id
 586e51a60fabf-29051bfbe99mr7491036fac.7.1730734859267; 
 Mon, 04 Nov 2024 07:40:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHTHLgRF7sGR/rUzhL1v/h/ffLFUH/U2Lp7nPDCAr0VVi+CE0aKcH1ds8xUsJODdXa6+Bi8CubOdtJMMguHlqg=
X-Received: by 2002:a05:6871:5821:b0:277:db1c:7c6a with SMTP id
 586e51a60fabf-29051bfbe99mr7491025fac.7.1730734858819; Mon, 04 Nov 2024
 07:40:58 -0800 (PST)
MIME-Version: 1.0
References: <20241029123637.1974604-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20241029123637.1974604-1-aleksandr.loktionov@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Mon, 4 Nov 2024 16:40:47 +0100
Message-ID: <CADEbmW1rJdFZ0ccpo-YLv0W8zQsr9-2eMnncDgR-tE+On0TX5g@mail.gmail.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com, 
 netdev@vger.kernel.org, Jan Sokolowski <jan.sokolowski@intel.com>, 
 Padraig J Connolly <padraig.j.connolly@intel.com>, maciej.fijalkowski@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1730734861;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lS1nNVVujw4czQIQmdBkpFCJWF8p7dDW3pFP3fBwFhk=;
 b=HBq1/FRcIDCmenz3rr9j30/d1YSDloT69ZyWbPxIrSfqGnNbMpPSUjMkSX6Ki/qidGYSgl
 zyE9PrMQjOiQNYjeFPKLlXwhpIVX8Cy3NTxxGCg9iDR+4vKc9uQO3yYcJP4UtqkVQw7guy
 +YqM6SmIS3uu3yZ9yly7F1SkOWfriYs=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=HBq1/FRc
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4444] i40e: add ability to
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

On Tue, Oct 29, 2024 at 1:36=E2=80=AFPM Aleksandr Loktionov
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
> Currently, VF iqueues are disabled if an MDD event occurs. This patch add=
s the

s/iqueues/queues/

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

I am not opposed to the custom rate-limiting, but have you also
considered struct ratelimit_state, ratelimit_state_{init,exit}(),
__ratelimit()?

> Co-developed-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> Co-developed-by: Padraig J Connolly <padraig.j.connolly@intel.com>
> Signed-off-by:  Padraig J Connolly <padraig.j.connolly@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |   4 +-
>  .../net/ethernet/intel/i40e/i40e_debugfs.c    |   2 +-
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    |   2 +
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 105 ++++++++++++++++--
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |   2 +-
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  11 +-
>  6 files changed, 111 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/etherne=
t/intel/i40e/i40e.h
> index d546567..6d6683c 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -87,6 +87,7 @@ enum i40e_state {
>         __I40E_SERVICE_SCHED,
>         __I40E_ADMINQ_EVENT_PENDING,
>         __I40E_MDD_EVENT_PENDING,
> +       __I40E_MDD_VF_PRINT_PENDING,
>         __I40E_VFLR_EVENT_PENDING,
>         __I40E_RESET_RECOVERY_PENDING,
>         __I40E_TIMEOUT_RECOVERY_PENDING,
> @@ -190,6 +191,7 @@ enum i40e_pf_flags {
>          */
>         I40E_FLAG_TOTAL_PORT_SHUTDOWN_ENA,
>         I40E_FLAG_VF_VLAN_PRUNING_ENA,
> +       I40E_FLAG_MDD_AUTO_RESET_VF,
>         I40E_PF_FLAGS_NBITS,            /* must be last */
>  };
>
> @@ -571,7 +573,7 @@ struct i40e_pf {
>         int num_alloc_vfs;      /* actual number of VFs allocated */
>         u32 vf_aq_requests;
>         u32 arq_overflows;      /* Not fatal, possibly indicative of prob=
lems */
> -
> +       unsigned long last_printed_mdd_jiffies; /* MDD message rate limit=
 */
>         /* DCBx/DCBNL capability for PF that indicates
>          * whether DCBx is managed by firmware or host
>          * based agent (LLDPAD). Also, indicates what
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net=
/ethernet/intel/i40e/i40e_debugfs.c
> index abf624d..6a697bf 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> @@ -721,7 +721,7 @@ static void i40e_dbg_dump_vf(struct i40e_pf *pf, int =
vf_id)
>                 dev_info(&pf->pdev->dev, "vf %2d: VSI id=3D%d, seid=3D%d,=
 qps=3D%d\n",
>                          vf_id, vf->lan_vsi_id, vsi->seid, vf->num_queue_=
pairs);
>                 dev_info(&pf->pdev->dev, "       num MDD=3D%lld\n",
> -                        vf->num_mdd_events);
> +                        vf->mdd_tx_events.count + vf->mdd_rx_events.coun=
t);
>         } else {
>                 dev_info(&pf->pdev->dev, "invalid VF id %d\n", vf_id);
>         }
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net=
/ethernet/intel/i40e/i40e_ethtool.c
> index 1d0d2e5..d146575 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -459,6 +459,8 @@ static const struct i40e_priv_flags i40e_gstrings_pri=
v_flags[] =3D {
>         I40E_PRIV_FLAG("base-r-fec", I40E_FLAG_BASE_R_FEC, 0),
>         I40E_PRIV_FLAG("vf-vlan-pruning",
>                        I40E_FLAG_VF_VLAN_PRUNING_ENA, 0),
> +       I40E_PRIV_FLAG("mdd-auto-reset-vf",
> +                      I40E_FLAG_MDD_AUTO_RESET_VF, 0),
>  };
>
>  #define I40E_PRIV_FLAGS_STR_LEN ARRAY_SIZE(i40e_gstrings_priv_flags)
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/et=
hernet/intel/i40e/i40e_main.c
> index cbcfada..07f0a91 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -11189,22 +11189,91 @@ static void i40e_handle_reset_warning(struct i4=
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
> +               vf->mdd_rx_events.count,
> +               pf->hw.pf_id,
> +               vf->vf_id,
> +               vf->default_lan_addr.addr,
> +               test_bit(I40E_FLAG_MDD_AUTO_RESET_VF, pf->flags) ? "on" :=
 "off");
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
> +       /* VF MDD event logs are rate limited to one second intervals */
> +       if (time_is_after_jiffies(pf->last_printed_mdd_jiffies + HZ * 1))
> +               return;
> +
> +       pf->last_printed_mdd_jiffies =3D jiffies;
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

Can there ever be anything to print here? i40e_print_vfs_mdd_events()
is also called at the end of i40e_handle_mdd_event(). It always clears
the __I40E_MDD_VF_PRINT_PENDING bit. So how can the bit ever remain
set between invocations? In fact, shouldn't the bit be a local
variable of this function instead of a pf->state bit?

>                 return;
> +       }
>
>         /* find what triggered the MDD event */
>         reg =3D rd32(hw, I40E_GL_MDET_TX);
> @@ -11248,36 +11317,50 @@ static void i40e_handle_mdd_event(struct i40e_p=
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

I see there's no rate-limiting applied here. Is this intentional?

> +
> +                       i40e_vc_reset_vf(vf, true);
>                 }
>         }
>
>         /* re-enable mdd interrupt cause */
>         clear_bit(__I40E_MDD_EVENT_PENDING, pf->state);

Can you remove this 2nd clearing of the __I40E_MDD_EVENT_PENDING bit?
If the interrupt handler detects a MDD event while we're still
printing the message about the previous one, we don't want to forget
it by clearing it here.

Michal

>         reg =3D rd32(hw, I40E_PFINT_ICR0_ENA);
>         reg |=3D  I40E_PFINT_ICR0_ENA_MAL_DETECT_MASK;
>         wr32(hw, I40E_PFINT_ICR0_ENA, reg);
>         i40e_flush(hw);
> +
> +       i40e_print_vfs_mdd_events(pf);
>  }
>
>  /**
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
>

