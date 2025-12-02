Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 283DFC99D54
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Dec 2025 03:11:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A48A5407B1;
	Tue,  2 Dec 2025 02:11:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ywLvtCxgSu0j; Tue,  2 Dec 2025 02:11:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4B7A408AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764641489;
	bh=rDi6VTYnV7nasmRARrfZLdbKfoS2HxlgyRIi+ndWGwI=;
	h=From:To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eNgXNWc46aUo+5/PDpZGSW4xjluHG6cMEPGi+AQDm2Bue3mMTnVMlXBSEMv29NJOz
	 h1X43FW+0LiSzLTxgiBwzqX6rOXwCNdmG75CZ7T89qXrxU2Ot6ezb242tN3ER6fVg4
	 u1Bd8XgL9Fhenh2NWJHKzF0ABkMaOA5qVKVOvJUuJS8qoEGLOduq02zUUmmsN1qltq
	 w73PxWBRoBYRVqoZooNCgh6CzjGjglrbuYTT/83a5mQJkFFXlRJaQ1V30VWlfzjcld
	 2y+WjMMmEdkRj2ExM2EDulO6xuC1CbO2O0Iz3UW95qffTgUWY1VTL5iciXjAAG/Slx
	 ELVojXdkrQBbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4B7A408AA;
	Tue,  2 Dec 2025 02:11:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8939A1BD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 02:11:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7B0CF407B1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 02:11:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6IqhPsOb83jE for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Dec 2025 02:11:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0FBC840744
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0FBC840744
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0FBC840744
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 02:11:25 +0000 (UTC)
X-CSE-ConnectionGUID: skz6BYMSQ2aOn2YxH4k6ZA==
X-CSE-MsgGUID: akeBil0eTaykWzUr31Daig==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="77283621"
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="77283621"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 18:11:25 -0800
X-CSE-ConnectionGUID: jqqmvzb8S2SjR0RGPY2ohQ==
X-CSE-MsgGUID: ldENihELRGm7y21uAcFcNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="194226978"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.88.27.140])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 18:11:25 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Chwee-Lin Choong <chwee.lin.choong@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S
 . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Richard
 Cochran <richardcochran@gmail.com>
Cc: yipeng.chai@amd.com, alexander.deucher@amd.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Avi Shalev <avi.shalev@intel.com>, Song
 Yoong Siang <yoong.siang.song@intel.com>, Chwee-Lin Choong
 <chwee.lin.choong@intel.com>
In-Reply-To: <20251128105304.8147-1-chwee.lin.choong@intel.com>
References: <20251128105304.8147-1-chwee.lin.choong@intel.com>
Date: Mon, 01 Dec 2025 18:11:21 -0800
Message-ID: <87zf81fx9y.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764641486; x=1796177486;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=fX1BXIg//i6pZxmO37/8m6XfZRKYZjau7eRh7qCM160=;
 b=NgGu3p5/XxnSVyyo3uqVwMwRVUAJUFvzl037oByBoFoEP8lkrEaHlJIp
 n7q5xKa9+id87EGzTdqtVVM72bl2/Sj63jbSoHRrtYLWLw0hJ6pX6aGU5
 fy/AdERGAXsvquFVJS7Xi71eizloK2f0n7+H4VSxv6b19XuFFXE9zv8Mx
 eec2tWM2Xy8Qun+ZfFuHjYm3DEikDf7tqWAZRbeZ2EqBX9joEHO2H7i4R
 4i7S2vEDdCqom5SW8AQUa2QoPjn5XSHOs3cgnfYB+i17akwBS9vbaNmwz
 A+SEowFBXPIsm4YEzwix+6CcCrN3xo6YUYa/jqXwl7XodCvko4wNCDGef
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NgGu3p5/
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] igc: fix race condition in
 TX timestamp read for register 0
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

Hi,

Chwee-Lin Choong <chwee.lin.choong@intel.com> writes:

> The current HW bug workaround checks the TXTT_0 ready bit first,
> then reads TXSTMPL_0 twice (before and after reading TXSTMPH_0)
> to detect whether a new timestamp was captured by timestamp
> register 0 during the workaround.
>
> This sequence has a race: if a new timestamp is captured after
> checking the TXTT_0 bit but before the first TXSTMPL_0 read, the
> detection fails because both the =E2=80=9Cold=E2=80=9D and =E2=80=9Cnew=
=E2=80=9D values come from
> the same timestamp.
>
> Fix by reading TXSTMPL_0 first to establish a baseline, then
> checking the TXTT_0 bit. This ensures any timestamp captured
> during the race window will be detected.
>
> Old sequence:
>   1. Check TXTT_0 ready bit
>   2. Read TXSTMPL_0 (baseline)
>   3. Read TXSTMPH_0 (interrupt workaround)
>   4. Read TXSTMPL_0 (detect changes vs baseline)
>
> New sequence:
>   1. Read TXSTMPL_0 (baseline)
>   2. Check TXTT_0 ready bit
>   3. Read TXSTMPH_0 (interrupt workaround)
>   4. Read TXSTMPL_0 (detect changes vs baseline)
>
> Fixes: c789ad7cbebc ("igc: Work around HW bug causing missing timestamps")
> Suggested-by: Avi Shalev <avi.shalev@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Co-developed-by: Song Yoong Siang <yoong.siang.song@intel.com>
> Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
> Signed-off-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>

Patch looks good, my only concern is this report:

https://lore.kernel.org/intel-wired-lan/AS1PR10MB5675DBFE7CE5F2A9336ABFA4EB=
EAA@AS1PR10MB5675.EURPRD10.PROD.OUTLOOK.COM/

It's not clear to me how/why the different buffer utilization is
affecting this, but at least seems worth some investigation and
reporting back in that thread.

> ---
> v1: https://patchwork.ozlabs.org/project/intel-wired-lan/patch/2025091818=
3811.31270-1-chwee.lin.choong@intel.com/
> v2: https://patchwork.ozlabs.org/project/intel-wired-lan/patch/2025112713=
4927.2133-1-chwee.lin.choong@intel.com/
> v3: https://patchwork.ozlabs.org/project/intel-wired-lan/patch/2025112715=
1137.2883-1-chwee.lin.choong@intel.com/
>
> changelog:
> v1 -> v2=20
> - Added detailed comments explaining the hardware bug workaround and race
>     detection mechanism
> v2 -> v3
> - Removed extra export file added by mistake=09
> v3 -> v4
> - Added co-developer
> ---
>  drivers/net/ethernet/intel/igc/igc_ptp.c | 43 ++++++++++++++----------
>  1 file changed, 25 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ether=
net/intel/igc/igc_ptp.c
> index b7b46d863bee..7aae83c108fd 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ptp.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
> @@ -774,36 +774,43 @@ static void igc_ptp_tx_reg_to_stamp(struct igc_adap=
ter *adapter,
>  static void igc_ptp_tx_hwtstamp(struct igc_adapter *adapter)
>  {
>  	struct igc_hw *hw =3D &adapter->hw;
> +	u32 txstmpl_old;
>  	u64 regval;
>  	u32 mask;
>  	int i;
>=20=20
> +	/* Establish baseline of TXSTMPL_0 before checking TXTT_0.
> +	 * This baseline is used to detect if a new timestamp arrives in
> +	 * register 0 during the hardware bug workaround below.
> +	 */
> +	txstmpl_old =3D rd32(IGC_TXSTMPL);
> +
>  	mask =3D rd32(IGC_TSYNCTXCTL) & IGC_TSYNCTXCTL_TXTT_ANY;
>  	if (mask & IGC_TSYNCTXCTL_TXTT_0) {
>  		regval =3D rd32(IGC_TXSTMPL);
>  		regval |=3D (u64)rd32(IGC_TXSTMPH) << 32;
>  	} else {
> -		/* There's a bug in the hardware that could cause
> -		 * missing interrupts for TX timestamping. The issue
> -		 * is that for new interrupts to be triggered, the
> -		 * IGC_TXSTMPH_0 register must be read.
> +		/* TXTT_0 not set - register 0 has no new timestamp initially.
> +		 *
> +		 * Hardware bug: Future timestamp interrupts won't fire unless
> +		 * TXSTMPH_0 is read, even if the timestamp was captured in
> +		 * registers 1-3.
>  		 *
> -		 * To avoid discarding a valid timestamp that just
> -		 * happened at the "wrong" time, we need to confirm
> -		 * that there was no timestamp captured, we do that by
> -		 * assuming that no two timestamps in sequence have
> -		 * the same nanosecond value.
> +		 * Workaround: Read TXSTMPH_0 here to enable future interrupts.
> +		 * However, this read clears TXTT_0. If a timestamp arrives in
> +		 * register 0 after checking TXTT_0 but before this read, it
> +		 * would be lost.
>  		 *
> -		 * So, we read the "low" register, read the "high"
> -		 * register (to latch a new timestamp) and read the
> -		 * "low" register again, if "old" and "new" versions
> -		 * of the "low" register are different, a valid
> -		 * timestamp was captured, we can read the "high"
> -		 * register again.
> +		 * To detect this race: We saved a baseline read of TXSTMPL_0
> +		 * before TXTT_0 check. After performing the workaround read of
> +		 * TXSTMPH_0, we read TXSTMPL_0 again. Since consecutive
> +		 * timestamps never share the same nanosecond value, a change
> +		 * between the baseline and new TXSTMPL_0 indicates a timestamp
> +		 * arrived during the race window. If so, read the complete
> +		 * timestamp.
>  		 */
> -		u32 txstmpl_old, txstmpl_new;
> +		u32 txstmpl_new;
>=20=20
> -		txstmpl_old =3D rd32(IGC_TXSTMPL);
>  		rd32(IGC_TXSTMPH);
>  		txstmpl_new =3D rd32(IGC_TXSTMPL);
>=20=20
> @@ -818,7 +825,7 @@ static void igc_ptp_tx_hwtstamp(struct igc_adapter *a=
dapter)
>=20=20
>  done:
>  	/* Now that the problematic first register was handled, we can
> -	 * use retrieve the timestamps from the other registers
> +	 * retrieve the timestamps from the other registers
>  	 * (starting from '1') with less complications.
>  	 */
>  	for (i =3D 1; i < IGC_MAX_TX_TSTAMP_REGS; i++) {
> --=20
> 2.43.0
>

--=20
Vinicius
