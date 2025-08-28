Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E591B3A88B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 19:43:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 38AA783BC5;
	Thu, 28 Aug 2025 17:43:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xnG1YqbcEBqN; Thu, 28 Aug 2025 17:43:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5892B83C6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756403021;
	bh=39UVD9jD47uFJ6TSgGQ5e07mnJTvscZvNgUxsvodOo8=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HszR8yTQnJTM/QHO83aCUIx0/5y6CrQxVEOq1BYt/OXNQ+ltghjIrWwZ5uawiV4LL
	 8YKlVI41FfMK6pMNBOOroI024lJPgxAXLjjP43n1YfX3cH2ZCY98+DuRyhKHQaKZzl
	 cydoPNAHKOQZZnLgHenJycnYMJE7vjcJOz/lsdt1cki55+RJp1Fs0YR31d3+fIwToA
	 vlOJ1UH1Y6yIcFwY6nUIhmbLEU6KJ5/jybHS5p2HUSVEdXys1i0All5/nJoIYOQljp
	 l5RR4avFoPVu570nt9SQd3eWnDdW9bU+NTJRObd9b2I9oSPqMGMURgKziwn8/5rjfT
	 n3A4/V5Rgj97Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5892B83C6B;
	Thu, 28 Aug 2025 17:43:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D0004928
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 17:43:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C146041081
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 17:43:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8BCxQa6NJ0pw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 17:43:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.42.203.116;
 helo=pdx-out-008.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=32827fd36=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BAACE40AD3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BAACE40AD3
Received: from pdx-out-008.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-008.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [52.42.203.116])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BAACE40AD3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 17:43:38 +0000 (UTC)
X-CSE-ConnectionGUID: M4jzjxKrS2uOQt3jmPJ/aw==
X-CSE-MsgGUID: LJnWMWTkQ7acSJG+LxWF/w==
X-IronPort-AV: E=Sophos;i="6.18,220,1751241600"; 
   d="scan'208";a="1979841"
Received: from ip-10-5-12-219.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.12.219])
 by internal-pdx-out-008.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Aug 2025 17:43:36 +0000
Received: from EX19MTAUWC001.ant.amazon.com [10.0.38.20:11071]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.41.88:2525]
 with esmtp (Farcaster)
 id 9236d93b-d03f-4bf6-b5b4-104817bfb858; Thu, 28 Aug 2025 17:43:36 +0000 (UTC)
X-Farcaster-Flow-ID: 9236d93b-d03f-4bf6-b5b4-104817bfb858
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWC001.ant.amazon.com (10.250.64.174) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.17;
 Thu, 28 Aug 2025 17:43:35 +0000
Received: from b0be8375a521.amazon.com (10.37.244.7) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.17;
 Thu, 28 Aug 2025 17:43:33 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <aleksandr.loktionov@intel.com>
CC: <andrew+netdev@lunn.ch>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <enjuk@amazon.com>,
 <intel-wired-lan@lists.osuosl.org>, <kohei.enju@gmail.com>,
 <kuba@kernel.org>, <netdev@vger.kernel.org>, <pabeni@redhat.com>,
 <przemyslaw.kitszel@intel.com>
Date: Fri, 29 Aug 2025 02:41:29 +0900
Message-ID: <20250828174326.20978-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <IA3PR11MB8986E8200AD587B4292B3F22E53BA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <IA3PR11MB8986E8200AD587B4292B3F22E53BA@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.244.7]
X-ClientProxiedBy: EX19D036UWB001.ant.amazon.com (10.13.139.133) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1756403018; x=1787939018;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=39UVD9jD47uFJ6TSgGQ5e07mnJTvscZvNgUxsvodOo8=;
 b=fO0/uy+OA4P1eW4euoAg71B99UiA8jXf71kbaO/5fQ8Xm9X7W3T0H8HK
 Xh05JgxQ6e1Oo9Sv+rcsPideyAnSQQz9cHJ7i6SOoC+NJ0OlktGESufVL
 KJbQXMcakot/3NdVVzhw/NxAFugwsS4SK9y5Xb+6t24yhUUdQq7gMpQZE
 lzieudTfGNBSw0+IZDdyRODlxIy64mhwoQtBv1Wg/wHkZybR4ULJ0Crih
 RuqBkr4WSOo8GCcYpOyWD+jIWAKoEANcFhgYZNHz3oz1F/XT7wU7fXScC
 Y6CPqqexlI8hgFzrm0QU3hUBcjhtidfENrytjCNKPZS5x+kNZozr37G19
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=fO0/uy+O
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: preserve RSS
 indirection table across admin down/up
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

On Thu, 28 Aug 2025 16:42:31 +0000, Loktionov, Aleksandr wrote:

> 
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Kohei Enju
> > Sent: Thursday, August 28, 2025 6:01 PM
> > To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> > Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> > <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> > Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>;
> > Paolo Abeni <pabeni@redhat.com>; kohei.enju@gmail.com; Kohei Enju
> > <enjuk@amazon.com>
> > Subject: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: preserve RSS
> > indirection table across admin down/up
> > 
> > Currently, the RSS indirection table configured by user via ethtool
> > is
> > reinitialized to default values during interface resets (e.g., admin
> > down/up, MTU change). As for RSS hash key, commit 3dfbfc7ebb95
> > ("ixgbe:
> > Check for RSS key before setting value") made it persistent across
> > interface resets.
> > 
> > Adopt the same approach used in igc and igb drivers which
> > reinitializes
> > the RSS indirection table only when the queue count changes. Since
> > the
> > number of RETA entries can also change in ixgbe, let's make user
> > configuration persistent as long as both queue count and the number
> > of
> > RETA entries remain unchanged.
> > 
> > Tested on Intel Corporation 82599ES 10-Gigabit SFI/SFP+ Network
> > Connection.
> > 
> > Test:
> > Set custom indirection table and check the value after interface
> > down/up
> > 
> >   # ethtool --set-rxfh-indir ens5 equal 2
> >   # ethtool --show-rxfh-indir ens5 | head -5
> > 
> >   RX flow hash indirection table for ens5 with 12 RX ring(s):
> >       0:      0     1     0     1     0     1     0     1
> >       8:      0     1     0     1     0     1     0     1
> >      16:      0     1     0     1     0     1     0     1
> >   # ip link set dev ens5 down && ip link set dev ens5 up
> > 
> > Without patch:
> >   # ethtool --show-rxfh-indir ens5 | head -5
> > 
> >   RX flow hash indirection table for ens5 with 12 RX ring(s):
> >       0:      0     1     2     3     4     5     6     7
> >       8:      8     9    10    11     0     1     2     3
> >      16:      4     5     6     7     8     9    10    11
> > 
> > With patch:
> >   # ethtool --show-rxfh-indir ens5 | head -5
> > 
> >   RX flow hash indirection table for ens5 with 12 RX ring(s):
> >       0:      0     1     0     1     0     1     0     1
> >       8:      0     1     0     1     0     1     0     1
> >      16:      0     1     0     1     0     1     0     1
> > 
> > Signed-off-by: Kohei Enju <enjuk@amazon.com>
> > ---
> > Changes:
> >   v1->v2:
> >     - add check for reta_entries in addition to rss_i
> >     - update the commit message to reflect the additional check
> >   v1: https://lore.kernel.org/intel-wired-lan/20250824112037.32692-
> > 1-enjuk@amazon.com/
> > ---
> >  drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  2 +
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 41 +++++++++++++---
> > ---
> >  2 files changed, 31 insertions(+), 12 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> > b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> > index 14d275270123..da3b23bdcce1 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> > @@ -838,6 +838,8 @@ struct ixgbe_adapter {
> >   */
> >  #define IXGBE_MAX_RETA_ENTRIES 512
> >  	u8 rss_indir_tbl[IXGBE_MAX_RETA_ENTRIES];
> > +	u32 last_reta_entries;
> > +	u16 last_rss_i;
> last_rss_i is cryptic; please, consider last_rss_indices (or similar)

Sure, I'll rename it to last_rss_indices for clarity.

> 
> > 
> >  #define IXGBE_RSS_KEY_SIZE     40  /* size of RSS Hash Key in bytes
> > */
> >  	u32 *rss_key;
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > index 27040076f068..05dfb06173d4 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > @@ -4323,14 +4323,21 @@ static void ixgbe_setup_reta(struct
> > ixgbe_adapter *adapter)
> >  	/* Fill out hash function seeds */
> >  	ixgbe_store_key(adapter);
> > 
> > -	/* Fill out redirection table */
> > -	memset(adapter->rss_indir_tbl, 0, sizeof(adapter-
> > >rss_indir_tbl));
> > +	/* Update redirection table in memory on first init, queue
> > count change,
> > +	 * or reta entries change, otherwise preserve user
> > configurations. Then
> > +	 * always write to hardware.
> > +	 */
> > +	if (adapter->last_rss_i != rss_i ||
> > +	    adapter->last_reta_entries != reta_entries) {
> > +		for (i = 0, j = 0; i < reta_entries; i++, j++) {
> You can avoid the top-of-loop equality test by using modulo, which reads easier, like:
> for (i = 0, j = 0; i < reta_entries; i++, j++)
>     adapter->rss_indir_tbl[i] = j % rss_i;

I got it. I'll use modulo and then j can be removed like:
    for (i = 0; i < reta_entries; i++)
           adapter->rss_indir_tbl[i] = i % rss_i;

> 
> > +			if (j == rss_i)
> > +				j = 0;
> > 
> > -	for (i = 0, j = 0; i < reta_entries; i++, j++) {
> > -		if (j == rss_i)
> > -			j = 0;
> > +			adapter->rss_indir_tbl[i] = j;
> > +		}
> > 
> > -		adapter->rss_indir_tbl[i] = j;
> > +		adapter->last_rss_i = rss_i;
> > +		adapter->last_reta_entries = reta_entries;
> >  	}
> > 
> >  	ixgbe_store_reta(adapter);
> > @@ -4338,8 +4345,9 @@ static void ixgbe_setup_reta(struct
> > ixgbe_adapter *adapter)
> > 
> >  static void ixgbe_setup_vfreta(struct ixgbe_adapter *adapter)
> >  {
> > -	struct ixgbe_hw *hw = &adapter->hw;
> >  	u16 rss_i = adapter->ring_feature[RING_F_RSS].indices;
> > +	struct ixgbe_hw *hw = &adapter->hw;
> > +	u32 reta_entries = 64;
> Magic number. Can you #define IXGBE_VFRETA_ENTRIES 64 ?

You're right about the magic number. 
I see it was introduced in commit 0f9b232b176d ("ixgbe: add support for 
X550 extended RSS support").

I'm considering using ixgbe_rss_indir_tbl_entries() instead of #define to 
avoid the magic number, since ixgbe_store_vfreta() already uses it.
This would ensure consistency between the two functions. Would that be 
acceptable, or would you prefer a #define?

> 
> >  	int i, j;
> > 
> >  	/* Fill out hash function seeds */
> > @@ -4352,12 +4360,21 @@ static void ixgbe_setup_vfreta(struct
> > ixgbe_adapter *adapter)
> >  					*(adapter->rss_key + i));
> >  	}
> > 
> > -	/* Fill out the redirection table */
> > -	for (i = 0, j = 0; i < 64; i++, j++) {
> > -		if (j == rss_i)
> > -			j = 0;
> > +	/* Update redirection table in memory on first init, queue
> > count change,
> > +	 * or reta entries change, otherwise preserve user
> > configurations. Then
> > +	 * always write to hardware.
> > +	 */
> > +	if (adapter->last_rss_i != rss_i ||
> > +	    adapter->last_reta_entries != reta_entries) {
> > +		for (i = 0, j = 0; i < reta_entries; i++, j++) {
> > +			if (j == rss_i)
> > +				j = 0;
> > +
> > +			adapter->rss_indir_tbl[i] = j;
> > +		}
> > 
> > -		adapter->rss_indir_tbl[i] = j;
> > +		adapter->last_rss_i = rss_i;
> > +		adapter->last_reta_entries = reta_entries;
> >  	}
> > 
> >  	ixgbe_store_vfreta(adapter);
> > --
> > 2.51.0
