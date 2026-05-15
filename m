Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGTPJxZIB2qrwQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2026 18:21:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1808B55316E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2026 18:21:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4E8D842F7;
	Fri, 15 May 2026 16:21:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jQcdnv1QwfJX; Fri, 15 May 2026 16:21:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D812A8440D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778862098;
	bh=DzmAcrJQwdNDyvyO4kjC7sI5ncqInsi8No2bwy36jAA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Eca5wbYTwNZYMJ3i7D4uQoAnRJB2/u9C7kz9+ZFyWpFlfGg6JqRIaxBdeLSR7L2k4
	 qaup9DbKbxoy5ku6ULfW1oJn+5bZb7VYIy6bBhQ+lfzTIYunIYBORhCcIPYddgZdWa
	 iFVJ9LlJR8Pzj+sWLpVNh3QFo5907hQN1YdTp421CHZoRtse9mRDJA7rncbg5fCl79
	 xKMQRTRPkuuepkhtuxNiRCkJy2tiBqqjf6dqWOjgOjZ3EObChSfZaDXgEoLazeuv5V
	 l7KeVw8F4zS48A1u65/sLsytPPciQgqiMFAkKsf7bhQBlpUQSB9nRWrPlQRaQzQFZt
	 9vi/ykz/15X6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D812A8440D;
	Fri, 15 May 2026 16:21:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id F3CB4282
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 16:21:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D97A961633
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 16:21:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eqHlYhqR3AGY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2026 16:21:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E822161632
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E822161632
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E822161632
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 16:21:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 35A1560098;
 Fri, 15 May 2026 16:21:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78525C2BCB0;
 Fri, 15 May 2026 16:21:33 +0000 (UTC)
Date: Fri, 15 May 2026 17:21:30 +0100
From: Simon Horman <horms@kernel.org>
To: "Korba, Przemyslaw" <przemyslaw.korba@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Message-ID: <20260515162130.GA227382@horms.kernel.org>
References: <20260508102247.826375-1-przemyslaw.korba@intel.com>
 <20260512092740.290008-2-horms@kernel.org>
 <PH0PR11MB4904E65A7FAA26DD5B6EFBE994072@PH0PR11MB4904.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <PH0PR11MB4904E65A7FAA26DD5B6EFBE994072@PH0PR11MB4904.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1778862094;
 bh=VaLnYsZ5jUTj/7eXesrqYg9o6HiF7DOwNnzsogKf/3U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZsQkFL2XrcdsPySWMm/2bZcc8c+jL+wlftQ4S+isnHHkNcTMgJqXUB0+undHXT111
 YwYkrxWp9OiUQHoMU0/QnqBAv2coM++RSk1/CB8zo4f89nhyQZc6kycKVtc2bXeh9I
 VdsDXWNSjvIdxlvMaVrRja5h82fjxyXLiBjp1h/q7emyQ0oG2wyDPcxLI8m2sOI2P0
 jwGjQT5bIkk8W4BBiRE6oXHPXo0brHu0al3R7mwshOTWVlEqsMFdNG7J5fcVj8gYcq
 wlsDG8/Nb4NYJ18YBPVY/3mx4TUWXVsV/IYxRo96yCdV8I7J5B7UFkk2HF0L6JTWAr
 KMCXQS3tuaYcA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ZsQkFL2X
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: support SBQ posted
 writes with non-posted support for CGU
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
X-Rspamd-Queue-Id: 1808B55316E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:email];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:arkadiusz.kubalewski@intel.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Thu, May 14, 2026 at 11:58:20AM +0000, Korba, Przemyslaw wrote:
> 
> 
> 
> > -----Original Message-----
> > From: Simon Horman <horms@kernel.org>
> > Sent: Tuesday, May 12, 2026 11:28 AM
> > To: Korba, Przemyslaw <przemyslaw.korba@intel.com>
> > Cc: 'Simon Horman' <horms@kernel.org>; intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>;
> > Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>
> > Subject: Re: [PATCH iwl-net v2] ice: support SBQ posted writes with non-posted support for CGU
> > 
> > From: 'Simon Horman' <horms@kernel.org>
> > 
> > This is an AI-generated review of your patch. The human sending this
> > email has considered the AI review valid, or at least plausible.
> > Full review at: https://sashiko.dev
> > ---
> > ice: support SBQ posted writes with non-posted support for CGU
> > 
> > This commit introduces non-posted SBQ writes while allowing posted writes
> > to skip completion waits. It also adds an SBQ flush by reading address 0
> > from PHY 0 before issuing a SYNC command to ensure writes are completed.
> > 
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> > > index 24fb7a3e14d63..ec4c85ad12e4d 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
> > > @@ -352,6 +352,17 @@ void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
> > >  static void ice_ptp_exec_tmr_cmd(struct ice_hw *hw)
> > >  {
> > >  	struct ice_pf *pf = container_of(hw, struct ice_pf, hw);
> > > +	struct ice_sbq_msg_input msg = {
> > > +		.dest_dev = ice_sbq_dev_phy_0,
> > > +		.opcode = ice_sbq_msg_rd,
> > > +	};
> > > +	int err;
> > > +
> > > +	if (hw->mac_type != ICE_MAC_E810) {
> > > +		err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
> > > +		if (err)
> > > +			dev_warn(ice_hw_to_dev(hw), "Failed to flush SBQ: %d\n", err);
> > > +	}
> > 
> > [ ... ]
> > 
> > > @@ -4469,15 +4482,15 @@ static int ice_read_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 *val)
> > >   */
> > >  static int ice_write_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 val)
> > >  {
> > > -	struct ice_sbq_msg_input msg = {0};
> > > +	struct ice_sbq_msg_input msg = {
> > > +		.dest_dev = ice_sbq_dev_phy_0,
> > > +		.opcode = ice_sbq_msg_wr_p,
> > > +		.msg_addr_low = lower_16_bits(addr),
> > > +		.msg_addr_high = upper_16_bits(addr),
> > > +		.data = val
> > > +	};
> > 
> > Since ice_write_phy_reg_e810() is updated to use the posted write opcode
> > (ice_sbq_msg_wr_p), it will skip the completion wait and return immediately.
> > 
> > If the SBQ flush in ice_ptp_exec_tmr_cmd() explicitly skips E810 devices
> > via the check for hw->mac_type != ICE_MAC_E810, does this leave E810 PHY
> > writes entirely asynchronous and unguarded?
> > 
> > Could this lead to a race condition where the writes have not actually
> > completed before the SYNC_EXEC_CMD is executed?
> 
> Hi, thanks for review! 
> With E810 only opcode 0x01 for writing is supported.
> On E810, the FW always sends completion responses for opcode 0x01, so the driver waits for each write to complete.
> On newer E8XX devices, opcode 0x01 is truly posted (no completion response), which is why the SBQ flush is needed before SYNC_EXEC_CMD.
> Since E810 writes are synchronous (driver waits for completion), flushing SBQ is unnecessary - all writes are already complete when the function returns.
> I can add comments explaining that, or make it a bit clearer in the code if you'd like 😊

Sorry, there was supposed to be some extra text along the lines of seeking
clarification.

Yes, I think it would be good to add a comment or something to
the commit message about this.
