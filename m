Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CFE7CFF819
	for <lists+intel-wired-lan@lfdr.de>; Wed, 07 Jan 2026 19:40:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C78580738;
	Wed,  7 Jan 2026 18:40:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zIi62IPkBObL; Wed,  7 Jan 2026 18:40:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1167580BC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767811217;
	bh=CD2jIr/VDx15GPtkNoiN6D8LeRDZdb8Oijt8AkLHlJA=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=H/YPJWa0Bsru4JO4y2wEIRq1/k9RNJLCmErVAtD7vj4L6Youod0aaLGaeweoTRj5x
	 4OidpBV7Uwj8A+zm6t2NEAM0xmgR/8ZoDEjoNi6QFN8IETGz1PJG8WQO3G5Q5EMXgv
	 lRjvRmeDSQHPfBeyUIOm6NGPbtN4J2oHMpxs7SgbKe1VQxyoZYtg6oxlc49n34lLHp
	 GfHNu7YkLmcJllYNkL9zpqOvrEUF0rC9E91/G+zjEoW+XdloXrkYXUNp5W6kGw81mY
	 UeMlfLlnD6ELsw/5/PNLfsx7ME/SfMTBZcDGWjVVFGoKrLbHJyy/aX56ckovmEgBZL
	 RX5POf5dMBnVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1167580BC6;
	Wed,  7 Jan 2026 18:40:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C4CEA25B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 18:40:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AB0AB40389
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 18:40:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jNjFaWWAE7ex for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jan 2026 18:40:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1134; helo=mail-yw1-x1134.google.com;
 envelope-from=boolli@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3C9954000B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3C9954000B
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com
 [IPv6:2607:f8b0:4864:20::1134])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3C9954000B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 18:40:13 +0000 (UTC)
Received: by mail-yw1-x1134.google.com with SMTP id
 00721157ae682-78fc520433aso26994577b3.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 07 Jan 2026 10:40:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767811212; x=1768416012;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=CD2jIr/VDx15GPtkNoiN6D8LeRDZdb8Oijt8AkLHlJA=;
 b=xCaB2Z8s4ElMMJwlPfISAhEJi3W5CzIbkc9jzPTvmXCdeBmdCjDtJYdIHfWZxdYX3Y
 HJnoXTSmzOKZXZCCGWEq1MyTELHZKJO6J7HfFRa5J9TuFpjLfcTj3//TbYSShXDeF1Sz
 MPx0YgKDRqCJdWQCcVtIGGvkKTvP6KWETeJM80Xr1IGur+u/qpAXQxw0TPJivBpPSvxI
 rdBeen0TQk/eLq7hjDNJFwuhDHoBPz9qsvOiz2gderDVKn/h0W+O+hASsYff9nCMh8jK
 lVKUTW/l1x+0VJHFQhVudbXnYn4dglej00C6TDArObtn9UjPMRIyqJalMShtslpst1+D
 nq0Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVJaecOkHoeI39jtqyRwAyB62bAwf5s1YkW1mfg+3WMl3d9W9U9RzcAJ4oDpv9XbO9oHUcpHrSKllhmyh9YWZw=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy11C9DxKWKHOeNTFFqxMwh0Omup0PkQpjqp1Urb1KxHUckAzs/
 trgn3VaVBlje0nAgFjd+T+j1Sekm+XySTxWFt1qAoQrNuPKBUJ7K560SF69jQqtIwImLB81Ed0G
 Yi3tZRuDsLL/mES3I7x3BuZTS7LJS2IQtBpKgTk3F
X-Gm-Gg: AY/fxX4Jnf3DgFU8wrYJX8jMWD2bcKyKewv4ZMZoV2XBQzNiPJJNY5cr1lL24nqfFDm
 NVgU+qM+rG5nPNX7iRQjgL+MfM62jRVlryHtCX8vApUmtMXY/QBu8ZuP/kT/w9ykQ9kprYxS8FK
 ydRyInuqSUYUE1M5+5mZQJK5aE9F80vxAN/+z4YgwxMBNDU/D4JaqpiVlBu+uRVTh5QZXflxN0H
 uxwtOG3zgtDISKrRZm6doCuBom7+sxFm7uezBtXXMx/iTQE+3k2KaZ36IqRtHKwfskXcbK3p0c0
 w6eWZxmuXJWzChz2C3PIzOkayA==
X-Google-Smtp-Source: AGHT+IGjMMhZ/IhC6X/EujIlmECly+CReLquvnDp8UqwOXWG3WXyMC1+2TiKNc9tQrJkyjjvyiDqN6tO5vOoIDN+Q6U=
X-Received: by 2002:a05:690e:1301:b0:641:f5bc:68e1 with SMTP id
 956f58d0204a3-64716c90566mr2944673d50.78.1767811211551; Wed, 07 Jan 2026
 10:40:11 -0800 (PST)
MIME-Version: 1.0
References: <20260107010503.2242163-1-boolli@google.com>
 <fba866fa-5ed7-4321-8776-e1585b4c417b@molgen.mpg.de>
In-Reply-To: <fba866fa-5ed7-4321-8776-e1585b4c417b@molgen.mpg.de>
Date: Wed, 7 Jan 2026 10:39:59 -0800
X-Gm-Features: AQt7F2qnt5SlMz_K9bh9suJQOY5pRnMK_fv_zkb81D4dAfNCQuOVAomik0utphM
Message-ID: <CAODvEq4HK0isNpT5G-O3zKAgThiLt39hz_h8eQS4-Vnf1NjJnw@mail.gmail.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 David Decotigny <decot@google.com>, Anjali Singhai <anjali.singhai@intel.com>, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>, emil.s.tantilov@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1767811212; x=1768416012; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=CD2jIr/VDx15GPtkNoiN6D8LeRDZdb8Oijt8AkLHlJA=;
 b=V1RX4PTvpTHsvbntyyV5EBM/hSc08YBprWVGRL/2mYz5Wh/KdSAablkki/HC/zg1fG
 FTppxpDgrw02Q5aEnL9x7llfwKQMBMzq+Hh46Qb/ZXA/nyu5da+5yAM5SrSFmq+dYgV/
 HwnKgiId7C2Zjo8c8rt9kjWGOjzG7b7/9IA4WSn48cCuOYiIf/qxXR7G2II7PVXkqhwi
 2WPRwWgnbihA7+NigSsHjcsmZscq9BG6PNTM4909lOnDUCfMuLGVfNJt4FKfw4iaY0EM
 6FcNQ643wiy7sxY3/8fWO97/K0hDFVsLURKTUWJEc7kaDx0ugibvefHpqGAnyK6p0AW0
 cBAg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=google.com header.i=@google.com header.a=rsa-sha256
 header.s=20230601 header.b=V1RX4PTv
Subject: Re: [Intel-wired-lan] [PATCH 1/5] idpf: skip getting/setting ring
 params if vport is NULL during HW reset
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
From: Li Li via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Li Li <boolli@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 6, 2026 at 9:30=E2=80=AFPM Paul Menzel <pmenzel@molgen.mpg.de> =
wrote:
>
> Dear Li,
>
>
> Thank you for your patch.
>
> Am 07.01.26 um 02:04 schrieb Li Li via Intel-wired-lan:
> > When an idpf HW reset is triggered, it clears the vport but does
> > not clear the netdev held by vport:
> >
> >      // In idpf_vport_dealloc() called by idpf_init_hard_reset(),
> >      // idpf_init_hard_reset() sets IDPF_HR_RESET_IN_PROG, so
> >      // idpf_decfg_netdev() doesn't get called.
>
> No need to format this as code comments. At least it confused me a little=
.

Thanks for the pointer. Will drop the comment format in the future.

>
> >      if (!test_bit(IDPF_HR_RESET_IN_PROG, adapter->flags))
> >          idpf_decfg_netdev(vport);
> >      // idpf_decfg_netdev() would clear netdev but it isn't called:
> >      unregister_netdev(vport->netdev);
> >      free_netdev(vport->netdev);
> >      vport->netdev =3D NULL;
> >      // Later in idpf_init_hard_reset(), the vport is cleared:
> >      kfree(adapter->vports);
> >      adapter->vports =3D NULL;
> >
> > During an idpf HW reset, when "ethtool -g/-G" is called on the netdev,
> > the vport associated with the netdev is NULL, and so a kernel panic
> > would happen:
> >
> > [  513.185327] BUG: kernel NULL pointer dereference, address: 000000000=
0000038
> > ...
> > [  513.232756] RIP: 0010:idpf_get_ringparam+0x45/0x80
> >
> > This can be reproduced reliably by injecting a TX timeout to cause
> > an idpf HW reset, and injecting a virtchnl error to cause the HW
> > reset to fail and retry, while calling "ethtool -g/-G" on the netdev
> > at the same time.
>
> If you shared the commands, how to do that, it would make reproducing
> the issue easier.

Here's what I did to introduce TX timeouts and virtchnl timeouts at run tim=
e:

--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -15,6 +15,9 @@ struct idpf_tx_stash {
 #define idpf_tx_buf_compl_tag(buf)     (*(u32 *)&(buf)->priv)
 LIBETH_SQE_CHECK_PRIV(u32);

+static bool SIMULATE_TX_TIMEOUT;
+module_param(SIMULATE_TX_TIMEOUT, bool, 0644);
+
 /**
  * idpf_chk_linearize - Check if skb exceeds max descriptors per packet
  * @skb: send buffer
@@ -79,6 +82,8 @@ void idpf_tx_timeout(struct net_device *netdev,
unsigned int txqueue)

        adapter->tx_timeout_count++;

+       SIMULATE_TX_TIMEOUT =3D false;
+
        netdev_err(netdev, "Detected Tx timeout: Count %d, Queue %d\n",
                   adapter->tx_timeout_count, txqueue);
        if (!idpf_is_reset_in_prog(adapter)) {
@@ -2028,6 +2033,12 @@ static bool idpf_tx_clean_complq(struct
idpf_compl_queue *complq, int budget,
                }
                tx_q =3D complq->txq_grp->txqs[rel_tx_qid];

+               if (unlikely(SIMULATE_TX_TIMEOUT && (tx_q->idx =3D=3D 1))) =
{
+                       netdev_err(tx_q->netdev, "boolli test:
triggering TX timeout for TX queue id %d\n", tx_q->idx);
+                       goto fetch_next_desc;
+               }
+
+
                /* Determine completion type */
                ctype =3D le16_get_bits(tx_desc->qid_comptype_gen,
                                      IDPF_TXD_COMPLQ_COMPL_TYPE_M);

--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -6,6 +6,9 @@
 #include "idpf.h"
 #include "idpf_virtchnl.h"

+static bool SIMULATE_VC_TIMEOUT;
+module_param(SIMULATE_VC_TIMEOUT, bool, 0644);
+
 #define IDPF_VC_XN_MIN_TIMEOUT_MSEC    2000
 #define IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC        (60 * 1000)
 #define IDPF_VC_XN_IDX_M               GENMASK(7, 0)
@@ -800,6 +803,10 @@ static int idpf_send_ver_msg(struct idpf_adapter *adap=
ter)
        xn_params.timeout_ms =3D IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;

        reply_sz =3D idpf_vc_xn_exec(adapter, &xn_params);
+       if (SIMULATE_VC_TIMEOUT) {
+               dev_err(&adapter->pdev->dev, "boolli test: simulating
VC timeout by returning -ETIME in idpf_send_ver_msg");
+               reply_sz =3D -ETIME;
+       }
        if (reply_sz < 0)
                return reply_sz;
        if (reply_sz < sizeof(vvi))

Then after the kernel is booted, we can introduce the TX timeout that
lasts forever by doing the following:

echo 1 | tee /sys/module/idpf/parameters/SIMULATE_TX_TIMEOUT && echo 1
| tee /sys/module/idpf/parameters/SIMULATE_VC_TIMEOUT

All my experiments in this patch series were performed after the
kernel was put in such a state.

>
> > With this patch applied, we see the following error but no kernel
> > panics anymore:
> >
> > [  476.323630] idpf 0000:05:00.0 eth1: failed to get ring params due to=
 no vport in netdev
> >
> > Signed-off-by: Li Li <boolli@google.com>
> > ---
> >   drivers/net/ethernet/intel/idpf/idpf_ethtool.c | 12 ++++++++++++
> >   1 file changed, 12 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/n=
et/ethernet/intel/idpf/idpf_ethtool.c
> > index d5711be0b8e69..6a4b630b786c2 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> > @@ -639,6 +638,10 @@ static void idpf_get_ringparam(struct net_device *=
netdev,
> >
> >       idpf_vport_ctrl_lock(netdev);
> >       vport =3D idpf_netdev_to_vport(netdev);
> > +     if (!vport) {
> > +             netdev_err(netdev, "failed to get ring params due to no v=
port in netdev\n");
>
> If vport =3D=3D NULL is expected, why log it as an error. What should the
> user do? Wait until reset is done?
>
> > +             goto unlock;
> > +     }
> >
> >       ring->rx_max_pending =3D IDPF_MAX_RXQ_DESC;
> >       ring->tx_max_pending =3D IDPF_MAX_TXQ_DESC;
> > @@ -647,6 +651,7 @@ static void idpf_get_ringparam(struct net_device *n=
etdev,
> >
> >       kring->tcp_data_split =3D idpf_vport_get_hsplit(vport);
> >
> > +unlock:
> >       idpf_vport_ctrl_unlock(netdev);
> >   }
> >
> > @@ -673,6 +674,11 @@ static int idpf_set_ringparam(struct net_device *n=
etdev,
> >
> >       idpf_vport_ctrl_lock(netdev);
> >       vport =3D idpf_netdev_to_vport(netdev);
> > +     if (!vport) {
> > +             netdev_err(netdev, "ring params not changed due to no vpo=
rt in netdev\n");
> > +             err =3D -EFAULT;
> > +             goto unlock_mutex;
> > +     }
> >
> >       idx =3D vport->idx;
> >
>
> Is there another =E2=80=93 possible more involved =E2=80=93 solution poss=
ible to wait
> until the hardware reset finished?

Please see Emil's patch series at
https://lore.kernel.org/intel-wired-lan/20251121001218.4565-1-emil.s.tantil=
ov@intel.com/,
in which https://lore.kernel.org/intel-wired-lan/20251121001218.4565-3-emil=
.s.tantilov@intel.com/
detaches the netdev at the start of a HW reset, which I also think is
a more elegant solution than mine.

I'm going to drop this patch series in favor of Emil's solution above.

>
>
> Kind regards,
>
> Paul
