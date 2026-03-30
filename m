Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Dk2NLSoymmx+gUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 18:45:40 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0032E35EFA6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 18:45:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2228580C41;
	Mon, 30 Mar 2026 16:45:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cR-5lCXXw8Tn; Mon, 30 Mar 2026 16:45:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5AEA380C0D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774889137;
	bh=n3mc2GuvqhmMb9wrRKINoXWmbXrHX0jcttXX5kjZeOQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hT+HxgPWHeDXcrucqHIX2Q7SkozpvDEmV6zxTVq+XB2l/XlpJnSP6fcgj2Oh8yVfp
	 GKfbJ2u/vxBi5oXbuaMeaWqemMjDw9pvrLfR/VM2j6ktnOgxR6IoFuUfGbWNLdVir1
	 EMPA95pTb9X2iMcqt+Lf6JUNZHZohS+rQJvkluT5ypm8d+UFOaR48EoKxXVVANL/1z
	 JMlXlMAm6B7L9iuOKnKmOm3Z9npu7F7lcIXL1qv97y+O0Tqh8Zkt2BtvpOIDNdBW6q
	 G9hlLSK3IS6uSFxmS8rZjb7jpe0ML/d/a4qhmn0r6373o0aacqi1hjbFbYhH9k4d2t
	 6gBKaRawA1jTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5AEA380C0D;
	Mon, 30 Mar 2026 16:45:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6253410F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 16:45:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 53A4F605DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 16:45:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M5CplJ4FYQ_K for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Mar 2026 16:45:34 +0000 (UTC)
X-Greylist: delayed 377 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 30 Mar 2026 16:45:33 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 69296605AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69296605AE
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:1004:224b::bd; helo=out-189.mta0.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
Received: from out-189.mta0.migadu.com (out-189.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::bd])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 69296605AE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Mar 2026 16:45:33 +0000 (UTC)
Message-ID: <65977d5b-16eb-418c-995e-6a918f67707a@linux.dev>
Date: Mon, 30 Mar 2026 17:39:08 +0100
MIME-Version: 1.0
To: Bob Van Valzah <bob@vanvalzah.com>, intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, julianstj@fb.com,
 jeff@jeffgeerling.com
References: <D1C3B3DF-960F-40C7-BBD7-994359F0C8AD@vanvalzah.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <D1C3B3DF-960F-40C7-BBD7-994359F0C8AD@vanvalzah.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1774888751;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=n3mc2GuvqhmMb9wrRKINoXWmbXrHX0jcttXX5kjZeOQ=;
 b=VCgdExw6qemPpBn+YPalVDfAPwFou3CU45L015mPhPUNvW3Qm4ve0edar5JI5H7r9WIlXF
 Gp2F7453FlE9AkKt+KgWrTX39Ji2hu/K2YOjjf72UiN5m6Xb6LNiu98s0a5ZiwzUEozmXy
 zHVK6RMuNz+4/2YKCFXzmMy3W/7t2Qw=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=VCgdExw6
Subject: Re: [Intel-wired-lan] [PATCH] igc: fix Tx timestamp timeout caused
 by unlocked TIMINCA write in adj fine
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
X-Spamd-Result: default: False [-0.61 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[linux.dev : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:mid,osuosl.org:dkim];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bob@vanvalzah.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:julianstj@fb.com,m:jeff@jeffgeerling.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[vadim.fedorenko@linux.dev,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[vadim.fedorenko@linux.dev,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0032E35EFA6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 29/03/2026 04:25, Bob Van Valzah wrote:
> Hi,
> 
> We found a race in igc_ptp_adjfine_i225() that causes "Tx timestamp
> timeout" errors and eventually wedges EXTTS when a PTP grandmaster
> (ptp4l with hardware timestamping) runs concurrently with PHC
> frequency discipline (any GPSDO calling clock_adjtime ADJ_FREQUENCY).
> 
> Root cause: igc_ptp_adjfine_i225() writes IGC_TIMINCA without holding
> any lock.  Every other PTP clock operation in igc_ptp.c (adjtime,
> gettime, settime) holds tmreg_lock, but adjfine does not.  When the
> increment rate changes while the hardware is capturing a TX timestamp,
> the captured value is corrupt.  The driver retries for
> IGC_PTP_TX_TIMEOUT (15s), then logs the timeout and frees the skb.
> Repeated occurrences eventually prevent EXTTS from delivering events.
> 
> The attached reproducer (triggers in ~17 seconds on i226):
> 
>    One thread calling clock_adjtime(ADJ_FREQUENCY) at ~200k/s on the
>    PHC, another sending UDP packets with SO_TIMESTAMPING requesting
>    hardware TX timestamps at ~100k/s.  A Python reproducer is at:
>    https://github.com/bobvan/PePPAR-Fix/blob/main/tools/igc_tx_timeout_repro.py
> 
>    At realistic rates (1 Hz adjfine from a GPSDO + ptp4l at 128 Hz
>    sync), the race triggers in ~30 minutes.
> 
> The attached patch holds ptp_tx_lock around the TIMINCA write and
> skips the write if any TX timestamps are pending (tx_tstamp[i].skb
> != NULL), returning -EBUSY.  This doesn't fully close the hardware
> race (a new TX capture can start between the check and the write),
> but at realistic rates the residual probability gives ~25 year MTBF
> vs ~30 minutes without the patch.
> 
> A complete fix would likely require either disabling TX timestamping
> around TIMINCA writes (via TSYNCTXCTL), or making the timeout recovery
> path more robust so a single corrupt timestamp doesn't wedge the
> subsystem.  We'd welcome guidance from the igc maintainers on the
> preferred approach.
> 
> Tested on:
>    - Intel i226 (TimeHAT v5 board on Raspberry Pi 5)
>    - Kernel 6.12.62+rpt-rpi-2712 (Raspberry Pi OS)
>    - Intel out-of-tree igc driver 5.4.0-7642.46
>    - Stock upstream igc_ptp.c (same code, same bug)
> 
> 	Bob
> 
> ---
> 
>   drivers/net/ethernet/intel/igc/igc_ptp.c | 18 +++++++++++++++++-
>   1 file changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
> index XXXXXXX..XXXXXXX 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -47,8 +47,10 @@ static int igc_ptp_adjfine_i225(struct ptp_clock_info *ptp, long scaled_ppm)
>   {
>          struct igc_adapter *igc = container_of(ptp, struct igc_adapter,
>                                                 ptp_caps);
>          struct igc_hw *hw = &igc->hw;
> +       unsigned long flags;
>          int neg_adj = 0;
>          u64 rate;
>          u32 inca;
> +       int i;
> 
>          if (scaled_ppm < 0) {
>                  neg_adj = 1;
> @@ -63,7 +65,21 @@ static int igc_ptp_adjfine_i225(struct ptp_clock_info *ptp, long scaled_ppm)
>          if (neg_adj)
>                  inca |= ISGN;
> 
> -       wr32(IGC_TIMINCA, inca);
> +       /* Changing the clock increment rate while a TX timestamp is being
> +        * captured by the hardware can corrupt the timestamp, causing the
> +        * driver to report "Tx timestamp timeout" and eventually wedging
> +        * the EXTTS subsystem.  Serialize with pending TX timestamps:
> +        * skip the rate change if any are in flight.
> +        */
> +       spin_lock_irqsave(&igc->ptp_tx_lock, flags);
> +       for (i = 0; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
> +               if (igc->tx_tstamp[i].skb) {
> +                       spin_unlock_irqrestore(&igc->ptp_tx_lock, flags);
> +                       return -EBUSY;
> +               }
> +       }
> +       wr32(IGC_TIMINCA, inca);
> +       spin_unlock_irqrestore(&igc->ptp_tx_lock, flags);

It's a bit weird solution, because in this case we may end up having no
successful calls to adjfine with high amount of TX timestamp packets in 
flight. Another problem here is that access to timing registers is
guarded by tmreg_lock, but here you use ptp_tx_lock, which protects
queue.

Were you able to recover "corrupted" time stamps to figure out why they
are discarded?


> 
>          return 0;
>   }
> --
> 2.39.2

