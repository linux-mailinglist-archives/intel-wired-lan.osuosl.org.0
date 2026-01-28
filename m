Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GAVlI2SoeWl/yQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 07:10:44 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 980AC9D587
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 07:10:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4138860721;
	Wed, 28 Jan 2026 06:10:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jqUMmz6_3x_h; Wed, 28 Jan 2026 06:10:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 834C460719
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769580641;
	bh=w/u1fzObb/vQ4nIOqm+p737l4YnAfCnIUy3FBydAJtY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kLnZlPbmStBmtreD275DZThzFY5kdz0TCFNL6vXjD1rko0Kp7DfnQbpLKIrda4Cph
	 rUFG6xJPFybhjZjKuiYTDHU44YuKH/F2D5h0G/Nu0FblB9RSvp6r1VF98fzUfJobNy
	 BsryENtF9cqYyyyhqzgdRQQ2r4s4Z38tB83wmHSFwTkqOX3zlxXqALtqKb/k02SGDG
	 u032tL03S+yc73/pSsSl4R8EX9X1qOOhZpZzL+HKPZL8zNGKWQsTepr7xKxe+rUlnM
	 Ja+SwA+17lRB7JreyLBUx/yftQInjZXYA2G6DbA9+jh8YuZ4EacMp23G27Hn+Dz0cw
	 t17/sPDBWoLYQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 834C460719;
	Wed, 28 Jan 2026 06:10:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B9AFE1AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 06:10:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B558D60710
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 06:10:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ivC4fclSxDRX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 06:10:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 924C2606FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 924C2606FA
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 924C2606FA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 06:10:38 +0000 (UTC)
Received: from ms-a2 (85.154.13.160.dy.iij4u.or.jp [160.13.154.85])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 60S69wpg032523
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 28 Jan 2026 15:09:59 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: anthony.l.nguyen@intel.com
Cc: aleksandr.loktionov@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net, 
 edumazet@google.com, enjuk@amazon.com,
 intel-wired-lan@lists.osuosl.org, kohei@enjuk.jp, kuba@kernel.org,
 netdev@vger.kernel.org, pabeni@redhat.com, piotr.kwapulinski@intel.com,
 pmenzel@molgen.mpg.de, przemyslaw.kitszel@intel.com, takkozu@amazon.com
Date: Wed, 28 Jan 2026 06:09:44 +0000
Message-ID: <20260128060958.6333-1-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <f521fae5-54d7-4a8a-a190-80e29b6275d8@intel.com>
References: <f521fae5-54d7-4a8a-a190-80e29b6275d8@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=w/u1fzObb/vQ4nIOqm+p737l4YnAfCnIUy3FBydAJtY=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:To:Subject:Date:Message-ID;
 s=rs20251215; t=1769580600; v=1;
 b=JlEhujSeU7vtv0/+BGamrTo9zGKFrnl3aXcsdlrX/d9eM5EuSJ6vf0u6ktA2ZOa0
 dKazCB6JrQocTwpIpRv53UE3OmnR4q2ows6LZRMj5OqNtEM5SlTEIdiP/p/gRJTC
 tCvYrh7FEAhjEfsIuMVrnmRS2VPAExRkXm6+P3L9kL+/+A3qGHif6kGlBW12F9Vd
 hwmxRC6nRaX1P89+LHPEsScRH2s6sZDKR0EDcvCTiwR3zRnNpg470z2Yl5aLLqSg
 26HdxT8y7NgHu/Ae9K5Bb4sZ0oiC9qUUKsURmE6HDts1YshC2BstxtQxomUo1X16
 gpYGebMa52jiyi0MWgfNpA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=JlEhujSe
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 3/3] igb: allow
 configuring RSS key via
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:enjuk@amazon.com,m:kohei@enjuk.jp,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:piotr.kwapulinski@intel.com,m:pmenzel@molgen.mpg.de,m:przemyslaw.kitszel@intel.com,m:takkozu@amazon.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,enjuk.jp:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 980AC9D587
X-Rspamd-Action: no action

On Tue, 27 Jan 2026 14:33:24 -0800, Tony Nguyen wrote:

> On 1/25/2026 5:12 AM, Kohei Enju wrote:
> > On Tue, 20 Jan 2026 18:34:40 +0900, Takashi Kozu wrote:
> > 
> >> Change igc_set_rxfh() to accept and save a userspace-provided
> >> RSS key. When a key is provided, store it in the adapter and write the
> >> E1000 registers accordingly.
> >>
> >> This can be tested using `ethtool -X <dev> hkey <key>`.
> >>
> >> Signed-off-by: Takashi Kozu <takkozu@amazon.com>
> >> ---
> >>   drivers/net/ethernet/intel/igb/igb.h         |  1 +
> >>   drivers/net/ethernet/intel/igb/igb_ethtool.c | 49 +++++++++++---------
> >>   drivers/net/ethernet/intel/igb/igb_main.c    |  3 +-
> >>   3 files changed, 30 insertions(+), 23 deletions(-)
> >>
> >> diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
> >> index 8c9b02058cec..2509ec30acf3 100644
> >> --- a/drivers/net/ethernet/intel/igb/igb.h
> >> +++ b/drivers/net/ethernet/intel/igb/igb.h
> >> @@ -657,6 +657,7 @@ struct igb_adapter {
> >>   	u32 rss_indir_tbl_init;
> >>   	u8 rss_indir_tbl[IGB_RETA_SIZE];
> >>   	u8 rss_key[IGB_RSS_KEY_SIZE];
> >> +	bool has_user_rss_key;
> > 
> > Hi Kozu-san.
> > 
> > While preparing for testing, I noticed that now 'has_user_rss_key' is
> > not necessary.
> > 
> > Since netdev_rss_key_fill() is called in igb_sw_init() and igb_sw_init()
> > is called only once for the adapter's lifetime, adapter->rss_key
> > wouldn't be changed except for user-intended change.
> > 
> > I'd drop that flag and related code (see below)
> 
> Hi Kohei,
> 
> I believe this igb implementation was based on your igc implementation 
> which also has the same. Would it be possible for you to update the igc 
> to do this as well?

Yes, you're right. I'd love to do that and post as new version, 
so could you drop the series[1] from tnguy/next-queue.git?

[1] https://lore.kernel.org/intel-wired-lan/20251025150136.47618-1-enjuk@amazon.com/

> 
> Thanks,
> Tony
