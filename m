Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EG5DIAPImGngMAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 21:45:55 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C99EA16ABB4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 21:45:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C524D41960;
	Fri, 20 Feb 2026 20:45:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tJgiPeSrN5Le; Fri, 20 Feb 2026 20:45:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0D7541957
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771620351;
	bh=g4QW/rxYMrWC1qtUxlhgMr6Uho9KgR9xRA8MZbs0IJ8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=92awqJswcOgBxmHhkzJzqtMaMN3hCI87OB2A6aAOPxqq9HbU13SaY5uLFWByTpq1K
	 LxDqzF7j6TLab8yP4qbrGRZD1amXT0eWxjxP6hDHSEMiwS9UXuSA7PSKg1FGkPtAj5
	 WKpl20MXq+vwZbg2YHQKTyRBLbDIbG5YgfBTvmOsHJ2Qp1gh+tZwpQvsC9RlWob0Iv
	 B6ws/bxmYqkJoEAn7GAfoT3+VxRyc3phzKuIEmmAu+pkPp6dwYm3284iFFBw406u2E
	 wYo4hMXjPuMrxn4Ft0Jwg3EeDh1FJ1BRtJ0uQysaTPRXjNCP7keADjWXYBT+A9Izem
	 ImUVGu3fyVSkQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F0D7541957;
	Fri, 20 Feb 2026 20:45:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D6155183
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 20:45:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BB55C6103B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 20:45:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0U2i0rnHFxLK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Feb 2026 20:45:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 015A06102D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 015A06102D
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 015A06102D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 20:45:46 +0000 (UTC)
Received: from ms-a2 (54.52.30.125.dy.iij4u.or.jp [125.30.52.54])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 61KKjR4u048125
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 21 Feb 2026 05:45:27 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: aleksandr.loktionov@intel.com
Cc: alice.michael@intel.com, andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kohei.enju@gmail.com, kohei@enjuk.jp,
 kuba@kernel.org, maciej.fijalkowski@intel.com, netdev@vger.kernel.org,
 pabeni@redhat.com, paul.greenwalt@intel.com, przemyslaw.kitszel@intel.com
Date: Fri, 20 Feb 2026 20:44:14 +0000
Message-ID: <20260220204526.7514-1-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <IA3PR11MB89864DB144A3D8990E6512D5E568A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <IA3PR11MB89864DB144A3D8990E6512D5E568A@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=g4QW/rxYMrWC1qtUxlhgMr6Uho9KgR9xRA8MZbs0IJ8=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:To:Subject:Date:Message-ID;
 s=rs20251215; t=1771620327; v=1;
 b=Y8Bku9BMzVuXdD6cj9XlchnAU0Q0reYEjpYi2tb054JZVWQzUbA54mqUDtSonRox
 8irIg6zH2TpqEBu2JFG4QZn68dh5GFYK/Ck4Qbbvvtu7QmPuJVkJ7cGaE3s5Iuun
 g5bYiGUw+pcJsxkuQMEj6Q7cnBtoivB4FCDoZGiKvBDj7p+4JloN/nNN8zEQGkus
 qaN0RoZ1+3j0q8ZyaE5QSxNUSAcoLgAYoc5zS2bRMH/XGZemmmJxLarQ+XANNKg9
 eggkjT1PHcHotuLu9ZDIufnYF+zSKPBZZYfmgZU85d4WWgitJW1Zeiscgon6hUGa
 HoMRorv0srS0LpUjEqoCjQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=Y8Bku9BM
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] ice: fix potential NULL
 pointer deref in error path of ice_set_ringparam()
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:alice.michael@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kohei.enju@gmail.com,m:kohei@enjuk.jp,m:kuba@kernel.org,m:maciej.fijalkowski@intel.com,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:paul.greenwalt@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,lists.osuosl.org,gmail.com,enjuk.jp,kernel.org,vger.kernel.org,redhat.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: C99EA16ABB4
X-Rspamd-Action: no action

On Fri, 20 Feb 2026 20:04:52 +0000, "Loktionov, Aleksandr" wrote:

> > -----Original Message-----
> > From: Kohei Enju <kohei@enjuk.jp>
> > Sent: Friday, February 20, 2026 7:40 PM
> > To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> > Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> > <andrew+netdev@lunn.ch>; David S. Miller <davem@davemloft.net>; Eric
> > Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> > Abeni <pabeni@redhat.com>; Loktionov, Aleksandr
> > <aleksandr.loktionov@intel.com>; Alice Michael
> > <alice.michael@intel.com>; Greenwalt, Paul <paul.greenwalt@intel.com>;
> > Fijalkowski, Maciej <maciej.fijalkowski@intel.com>;
> > kohei.enju@gmail.com; Kohei Enju <kohei@enjuk.jp>
> > Subject: [PATCH v1 iwl-net] ice: fix potential NULL pointer deref in
> > error path of ice_set_ringparam()
> >=20
> > ice_set_ringparam nullifies tstamp_ring of temporary tx_rings, without
> > clearing ICE_TX_RING_FLAGS_TXTIME bit.
> > When ICE_TX_RING_FLAGS_TXTIME is set and the subsequent
> > ice_setup_tx_ring() call fails, a NULL pointer dereference could
> > happen in the unwinding sequence:
> >=20
> > ice_clean_tx_ring()
> > -> ice_is_txtime_cfg() =3D=3D true (ICE_TX_RING_FLAGS_TXTIME is set)
> > -> ice_free_tx_tstamp_ring()
> >   -> ice_free_tstamp_ring()
> >     -> tstamp_ring->desc (NULL deref)
> >=20
> > Clear ICE_TX_RING_FLAGS_TXTIME bit to avoid the potential issue.
> >=20
> > Note that this potential issue is found by manual code review.
> > Compile test only since unfortunately I don't have E830 devices.
> >=20
> > Fixes: ccde82e90946 ("ice: add E830 Earliest TxTime First Offload
> > support")
> If it's a fix, shouldn't it go to net?

This fix relies on a commit 8a4e78094945 ("ice: fix race condition in TX
timestamp ring cleanup"), which changed type of flags from u8 to
BITMAP, as you advised in [1].
Since the commit only exists in Tony's tree, I chose iwl-net, not net.

[1] https://lore.kernel.org/intel-wired-lan/IA3PR11MB8986EB459D2FD1697644CF98E598A@IA3PR11MB8986.namprd11.prod.outlook.com/

> 
> > Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_ethtool.c | 1 +
> >  1 file changed, 1 insertion(+)
> >=20
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > index 7f769a90dde1..5ed86648d0d6 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > @@ -3290,6 +3290,7 @@ ice_set_ringparam(struct net_device *netdev,
> > struct ethtool_ringparam *ring,
> >  		tx_rings[i].desc =3D NULL;
> >  		tx_rings[i].tx_buf =3D NULL;
> >  		tx_rings[i].tstamp_ring =3D NULL;
> > +		clear_bit(ICE_TX_RING_FLAGS_TXTIME, tx_rings[i].flags);
> >  		tx_rings[i].tx_tstamps =3D &pf->ptp.port.tx;
> >  		err =3D ice_setup_tx_ring(&tx_rings[i]);
> If ice_setup_tx_ring() internally reads ICE_TX_RING_FLAGS_TXTIME to decide =
> whether to allocate the tstamp_ring, then clearing the bit first means ice_=
> setup_tx_ring() skips TxTime setup even on success - leaving TxTime silentl=
> y broken after ice_set_ringparam() completes normally. The crash is fixed o=
> n the error path, but I'm afraid a functional regression is introduced on t=
> he success path.
> Please correct me if I'm wrong.

I believe, in the successful path, tx_tstamps and the flag
ICE_TX_RING_FLAGS_TXTIME are restored in ice_up().

ice_up()
 ice_vsi_cfg_lan()
  ice_vsi_cfg_lan_txqs()
   ice_vsi_cfg_txqs()
    ice_vsi_cfg_txq()
     ice_is_txtime_ena() ( == test_bit(ring->q_index,  pf->txtime_txqs))
     ice_alloc_setup_tstamp_ring()
      ice_alloc_tstamp_ring()
       - allocate tx_tstamps
       - set_bit(ICE_TX_RING_FLAGS_TXTIME, tx_ring->flags);

Enablement of TxTime feature is managed by pf->txtime_txqs, and
ring->flags represents only a 'result' of the enablement.

Therefore I think it's not a problem, but please let me know if my
understanding is wrong.
Thank you for reviewing, Alex!

> 
> Thank you
> Alex
> 
> >  		if (err) {
> > --
> > 2.51.0
