Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJi+AVJpgGlA7wIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 10:07:30 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA72C9E99
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 10:07:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 25B836066A;
	Mon,  2 Feb 2026 09:07:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IIjXUoQySH_w; Mon,  2 Feb 2026 09:07:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C08460A93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770023247;
	bh=yyiESOm90+z7sZstCR+aMqmEF6B3vc9FhNQzGa+DDnE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G9IWlMZcK9O94Aazkrf8109I4my/39HebFzTd9nCdeprFfM1xzofoe6IQFEiTxSWt
	 s8COx4YbzAuGUFIBAVvqPrlvG4touY3ZvUcUWaOlrrGA/oapH7cJU1fbBllPVPPZFT
	 MhlkO5Hk8FgG2de5bq8Bt1rAIGMjfThmO78S6yR27O6IOtzb0xb0N5NcZEXwcsQsh9
	 nemChboXb10mjjtqGWLOe3KpzV60j7z+E3WeJaQIqG+of6Yptg3qoPyOMoPWbs7i82
	 9U/KhHsMC38THYc3lclrGS42O3rxjTCmAsxI2ZEVfSqK08uwdhd24ocLevBKsqE7wB
	 fwufAiCON4ElQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C08460A93;
	Mon,  2 Feb 2026 09:07:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0723A149
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 09:07:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DEA734094A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 09:07:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y_GwPoM37aj8 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Feb 2026 09:07:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DD97240947
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD97240947
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DD97240947
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 09:07:24 +0000 (UTC)
Received: from ms-a2 (182.51.30.125.dy.iij4u.or.jp [125.30.51.182])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 612974hT066924
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Mon, 2 Feb 2026 18:07:04 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: aleksandr.loktionov@intel.com
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, kohei.enju@gmail.com, kohei@enjuk.jp,
 kuba@kernel.org, netdev@vger.kernel.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com, vitaly.lifshits@intel.com
Date: Mon,  2 Feb 2026 09:06:26 +0000
Message-ID: <20260202090704.13025-1-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <IA3PR11MB89866EDA0E5756FBE635AF8DE59AA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <IA3PR11MB89866EDA0E5756FBE635AF8DE59AA@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=yyiESOm90+z7sZstCR+aMqmEF6B3vc9FhNQzGa+DDnE=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:To:Subject:Date:Message-ID;
 s=rs20251215; t=1770023224; v=1;
 b=Scd2xrk3YRXMJ6fh/iB7Mz0rAgl7g7gvaTNfc630RKlwg6J9Q+SMqz6R2rMNL0lB
 x2gbPv5TVxrF0Q7sk1NrDnyG9e4tbdkVNBn9dYbQFM9G8sxeVQb7li3GhvS52ZSz
 yAwwXyQMol4qNCZHuJF+z9OlEax2LVXiTaANmtgg56CuAzKKgpu0ncLoQ6CvZgrw
 9uW7lSB6wEsVGgCRz7rOExgG2FajkUddnDSfydRnOHrkJfbslzDwOaHGzHtxvIg9
 JDLq1IXUe65UKnBygtxcCXMPnqHHxvXvbdyfReuSQPSVsFgTkmg/7gof2WMCSl+J
 QQzuI4rKsoejryGoNk8Mmg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=Scd2xrk3
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 1/3] igc: prepare for RSS
 key get/set support
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[lunn.ch,intel.com,davemloft.net,google.com,kernel.org,lists.osuosl.org,gmail.com,enjuk.jp,vger.kernel.org,redhat.com];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:horms@kernel.org,m:kohei.enju@gmail.com,m:kohei@enjuk.jp,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:vitaly.lifshits@intel.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,enjuk.jp:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 7DA72C9E99
X-Rspamd-Action: no action

On Mon, 2 Feb 2026 07:59:55 +0000, "Loktionov, Aleksandr" wrote:

> > @@ -360,6 +362,7 @@ unsigned int igc_get_max_rss_queues(struct
> > igc_adapter *adapter);  void igc_set_flag_queue_pairs(struct
> > igc_adapter *adapter,
> >  			      const u32 max_rss_queues);
> >  int igc_reinit_queues(struct igc_adapter *adapter);
> > +void igc_write_rss_key(struct igc_adapter *adapter);
> >  void igc_write_rss_indir_tbl(struct igc_adapter *adapter);  bool
> > igc_has_link(struct igc_adapter *adapter);  void igc_reset(struct
> > igc_adapter *adapter); diff --git
> > a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > index 3172cdbca9cc..1b4075e7e8e6 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> I think here should be added include?
> 
> #include <linux/unaligned.h> /* for get_unaligned_le32() */
> 
> Isn't it?

Hi Alex, thank you for reviewing.

Compilation succeeds as is, and the header file is included indirectly
in the following path.

igc_ethtool.c
  -> linux/if_vlan.h
    -> linux/etherdevice.h
      -> linux/unaligned.h

> 
> > @@ -1460,6 +1460,26 @@ static int igc_ethtool_set_rxnfc(struct
> > net_device *dev,
> >  	}
> >  }
> >=20
> > +/**
> > + * igc_write_rss_key - Program the RSS key into device registers
> > + * @adapter: board private structure
> > + *
> > + * Write the RSS key stored in adapter->rss_key to the IGC_RSSRK
> > registers.
> > + * Each 32-bit chunk of the key is read using get_unaligned_le32()
> > and
> > +written
> > + * to the appropriate register.
> > + */
> > +void igc_write_rss_key(struct igc_adapter *adapter) {
> > +	struct igc_hw *hw =3D &adapter->hw;
> > +	u32 val;
> > +	int i;
> > +
> > +	for (i =3D 0; i < IGC_RSS_KEY_SIZE / 4; i++) {
> > +		val =3D get_unaligned_le32(&adapter->rss_key[i * 4]);
> > +		wr32(IGC_RSSRK(i), val);
> > +	}
> > +}
> > +
> 
> ...
> 
> > --
> > 2.51.0
