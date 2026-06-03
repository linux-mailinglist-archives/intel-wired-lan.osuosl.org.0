Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QAk5Oq5oIGo33AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Jun 2026 19:47:26 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F7963A42A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 03 Jun 2026 19:47:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=0kKzEaM6;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:zohomail.in:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3EF5A42607;
	Wed,  3 Jun 2026 17:47:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pK5FQJyJmwyn; Wed,  3 Jun 2026 17:47:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C15242671
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780508843;
	bh=M1hcfkwdG9b/f2CeAk2V40YZDpzdGZRrdqRtcQN0lr4=;
	h=Date:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=0kKzEaM6w01Z3cplNaZreCQsX3+D1VMo3b4U7/yslnLaRz2cFZ9Kn/ydXsxLSw1QI
	 guHoFgcfnAJGvk6eHcv/7ywLZ0Ss9I4+lJkED2ZvR9nY3tMSnX63nmo/qzUw6Vws+s
	 0FsMojKWNvYrAypkprHiZ48Z5OjBWUcWbzbbjMIsKuXPgwSJY+t8xqQkiqNoiVtX+u
	 FfDuDdN/qokqBJl7O9q5iEnZyDDq1Eqe5Z4gp+dj8fpKEP77oWQU7IG+EP8rrfAXr8
	 DBsIziQfh+9zKe63d/D+mUVMN/gwUQSBl/59jQkWDfNT9cshFROB77AnICMocMRXNQ
	 H61B/Sn3Vijsg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C15242671;
	Wed,  3 Jun 2026 17:47:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C63AF192
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 17:47:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C428661731
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 17:47:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gs18c4rjksS6 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jun 2026 17:47:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=103.117.158.93;
 helo=sender-pp-o93.zoho.in; envelope-from=kshitiz.bartariya@zohomail.in;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E52D5615B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E52D5615B2
Received: from sender-pp-o93.zoho.in (sender-pp-o93.zoho.in [103.117.158.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E52D5615B2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jun 2026 17:47:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1780508785; cv=none; d=zohomail.in; s=zohoarc; 
 b=YqObyGuUBb5BpX7Ras9OE1+4F4AQUz29wa5a29vqbAyd3RrCsztck+WicLhML7Iqxp+qO3RUOQP/XQygpHPfnMudNdYvoXmKHmv5tzDkTSJF7JUXrt9QSs6XPwNYbd1kholr5/1r5pMWqGSRS5X670r7HuBiRKGkIaeFuUsUWec=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.in;
 s=zohoarc; t=1780508785;
 h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=M1hcfkwdG9b/f2CeAk2V40YZDpzdGZRrdqRtcQN0lr4=; 
 b=NNH8AZbYDc+9e/qHvv+YBoca4fajxmz5zLLM1nMC491muqQe/aA0d5aVi2p+XJXpSpQHNVQwRn2XfiPiUjUTO0kswVEGtJZsNSFNC9dCGxWMlRBPraRxzrY+H9lQ7/1j6ul9JO0t8sJrzcdmMZCAVj3diFgAdKHbw5jZN1RfStY=
ARC-Authentication-Results: i=1; mx.zohomail.in;
 dkim=pass  header.i=zohomail.in;
 spf=pass  smtp.mailfrom=kshitiz.bartariya@zohomail.in;
 dmarc=pass header.from=<kshitiz.bartariya@zohomail.in>
Received: from mail.zoho.in by mx.zoho.in
 with SMTP id 1780508779653425.68454987418306;
 Wed, 3 Jun 2026 23:16:19 +0530 (IST)
Received: from  [49.206.129.4] by mail.zoho.in
 with HTTP;Wed, 3 Jun 2026 23:16:19 +0530 (IST)
Date: Wed, 03 Jun 2026 23:16:19 +0530
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "jedrzejjagielski" <jedrzej.jagielski@intel.com>
Cc: "Nguyen,  Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel,  Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "Loktionov,  Aleksandr" <aleksandr.loktionov@intel.com>,
 "Keller,  Jacob E" <jacob.e.keller@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Message-Id: <19e8e97e47d.7412768311622.5700912759504358748@zohomail.in>
In-Reply-To: <PH7PR11MB5983BC8645AB81E2AB011460F3122@PH7PR11MB5983.namprd11.prod.outlook.com>
References: <20260602100932.21838-1-kshitiz.bartariya@zohomail.in>
 <PH7PR11MB5983BC8645AB81E2AB011460F3122@PH7PR11MB5983.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
 boundary="----=_Part_34936_2033178056.1780508779645"
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; t=1780508785; 
 s=zoho; d=zohomail.in; i=kshitiz.bartariya@zohomail.in;
 h=Date:Date:From:From:To:To:Cc:Cc:Message-Id:Message-Id:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Reply-To;
 bh=M1hcfkwdG9b/f2CeAk2V40YZDpzdGZRrdqRtcQN0lr4=;
 b=nOwi/IBEoxDV2m1/LHa8bR3Hmq0XgF9zFeWG4iqYDj1yzmBzkCQPruHbg0OQwkrw
 y1sILh2gqIaKrEej2wMwuUGmpnB25kjMiudVm8INPZvX5FRw54JSNhqeRYguKX+h6lJ
 ZdKGSTTqKT2YU2wazeTPS/eL4ZbXpijXBhALk6qA=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=zohomail.in
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=zohomail.in header.i=kshitiz.bartariya@zohomail.in
 header.a=rsa-sha256 header.s=zoho header.b=nOwi/IBE
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: implement
 get_queue_stats_rx
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
From: Kshitiz Bartariya via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Kshitiz Bartariya <kshitiz.bartariya@zohomail.in>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.30 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:zohomail.in:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:piotr.kwapulinski@intel.com,m:jedrzej.jagielski@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[kshitiz.bartariya@zohomail.in];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 86F7963A42A

------=_Part_34936_2033178056.1780508779645
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jedrzej, Piotr,



Thanks for the review!



@Jedrzej - I will add the exact command to commit message in v2. Regarding

hardware testing,  unfortunately I don't have access to real HW at the mome=
nt.



Kshitiz







From: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
To: "Kshitiz Bartariya"<kshitiz.bartariya@zohomail.in>, "Nguyen,  Anthony L=
"<anthony.l.nguyen@intel.com>, "Kitszel,  Przemyslaw"<przemyslaw.kitszel@in=
tel.com>, "andrew+netdev@lunn.ch"<andrew+netdev@lunn.ch>, "davem@davemloft.=
net"<davem@davemloft.net>, "edumazet@google.com"<edumazet@google.com>, "kub=
a@kernel.org"<kuba@kernel.org>, "pabeni@redhat.com"<pabeni@redhat.com>, "Lo=
ktionov,  Aleksandr"<aleksandr.loktionov@intel.com>, "Keller,  Jacob E"<jac=
ob.e.keller@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org"<intel-wired-lan@lists.osuosl.org>, "=
netdev@vger.kernel.org"<netdev@vger.kernel.org>, "linux-kernel@vger.kernel.=
org"<linux-kernel@vger.kernel.org>
Date: Tue, 02 Jun 2026 19:59:33 +0530
Subject: RE: [Intel-wired-lan] [PATCH net-next] ixgbe: implement get_queue_=
stats_rx



>-----Original Message-----=20
>From: Intel-wired-lan < mailto:intel-wired-lan-bounces@osuosl.org > On Beh=
alf Of Kshitiz Bartariya via Intel-wired-lan=20
>Sent: Tuesday, June 2, 2026 12:09 PM=20
>To: Nguyen, Anthony L < mailto:anthony.l.nguyen@intel.com >; Kitszel, Prze=
myslaw < mailto:przemyslaw.kitszel@intel.com >; mailto:andrew+netdev@lunn.c=
h ; mailto:davem@davemloft.net ; mailto:edumazet@google.com ; mailto:kuba@k=
ernel.org ; mailto:pabeni@redhat.com ; Loktionov, Aleksandr < mailto:aleksa=
ndr.loktionov@intel.com >; Keller, Jacob E < mailto:jacob.e.keller@intel.co=
m >=20
>Cc: Kshitiz Bartariya < mailto:kshitiz.bartariya@zohomail.in >; mailto:int=
el-wired-lan@lists.osuosl.org ; mailto:netdev@vger.kernel.org ; mailto:linu=
x-kernel@vger.kernel.org =20
>Subject: [Intel-wired-lan] [PATCH net-next] ixgbe: implement get_queue_sta=
ts_rx=20
>=20
>Hook into the netdev_stat_ops interface to expose per RX queue statistics =
through the netdev generic netlink API.=20
>=20
>The following counters are filled:=20
>=20
> - alloc_fail: sum of alloc_rx_page_failed and alloc_rx_buff_failed=20
>=20
> - csum_bad: maps directly to csum_err, which is incremented for both=20
>   IP header and L4 checksum errors in ixgbe_rx_checksum().=20
>=20
>Signed-off-by: Kshitiz Bartariya < mailto:kshitiz.bartariya@zohomail.in >=
=20
>---=20
>This patch was previously discussed for the net tree:=20
>Link: https://lore.kernel.org/lkml/20260526074744.36315-1-kshitiz.bartariy=
a@zohomail.in/ =20
>=20
>Sending to net-next as suggested by Jacob Keller and Aleksandr Loktionov.=
=20
>=20
>=20
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 16 ++++++++++++++++=20
> 1 file changed, 16 insertions(+)=20
>=20
>diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/e=
thernet/intel/ixgbe/ixgbe_main.c=20
>index bc16e4c93fd4..05d4b8aff1fc 100644=20
>--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c=20
>+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c=20
>@@ -9759,6 +9759,21 @@ static void ixgbe_get_stats64(struct net_device *ne=
tdev,=20
> =C2=A0=C2=A0=C2=A0=C2=A0stats->rx_missed_errors=C2=A0=C2=A0=C2=A0=C2=A0=
=3D netdev->stats.rx_missed_errors;=20
> }=20
>=20
>+static void ixgbe_get_queue_stats_rx(struct net_device *dev, int idx,=20
>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0     struct netdev_queue_stats_rx *stats) {=20
>+=C2=A0=C2=A0=C2=A0=C2=A0struct ixgbe_adapter *adapter =3D ixgbe_from_netd=
ev(dev);=20
>+=C2=A0=C2=A0=C2=A0=C2=A0struct ixgbe_ring *ring =3D adapter->rx_ring[idx]=
;=20
>+=20
>+=C2=A0=C2=A0=C2=A0=C2=A0stats->alloc_fail =3D ring->rx_stats.alloc_rx_pag=
e_failed +=20
>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
   ring->rx_stats.alloc_rx_buff_failed;=20
>+=C2=A0=C2=A0=C2=A0=C2=A0stats->csum_bad =3D ring->rx_stats.csum_err; }=20
>+=20
>+static const struct netdev_stat_ops ixgbe_stat_ops =3D {=20
>+=C2=A0=C2=A0=C2=A0=C2=A0.get_queue_stats_rx=C2=A0=C2=A0=C2=A0=C2=A0=3D ix=
gbe_get_queue_stats_rx,=20
>+};=20
>+=20
> static int ixgbe_ndo_get_vf_stats(struct net_device *netdev, int vf,=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0  struct ifla_vf_stats *vf_stats)=20
> {=20
>@@ -11662,6 +11677,7 @@ static int ixgbe_probe(struct pci_dev *pdev, const=
 struct pci_device_id *ent)=20
> =C2=A0=C2=A0=C2=A0=C2=A0hw->phy.mdio.mdio_write =3D ixgbe_mdio_write;=20
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0netdev->netdev_ops =3D &ixgbe_netdev_ops;=20
>+=C2=A0=C2=A0=C2=A0=C2=A0netdev->stat_ops   =3D &ixgbe_stat_ops;=20
> =C2=A0=C2=A0=C2=A0=C2=A0ixgbe_set_ethtool_ops(netdev);=20
> =C2=A0=C2=A0=C2=A0=C2=A0netdev->watchdog_timeo =3D 5 * HZ;=20
> =C2=A0=C2=A0=C2=A0=C2=A0strscpy(netdev->name, pci_name(pdev), sizeof(netd=
ev->name));=20
>--=20
>2.50.1 (Apple Git-155)=20
=20
Reviewed-by: Piotr Kwapulinski < mailto:piotr.kwapulinski@intel.com >
------=_Part_34936_2033178056.1780508779645
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html><head>=
<meta content=3D"text/html;charset=3DUTF-8" http-equiv=3D"Content-Type"></h=
ead><body ><div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif=
; font-size: 10pt;"><div>Hi Jedrzej, Piotr,<br></div><div><br></div><div>Th=
anks for the review!<br></div><div><br></div><div>@Jedrzej - I will add the=
 exact command to commit message in v2. Regarding<br></div><div>hardware te=
sting,  unfortunately I don't have access to real HW at the moment.<br></di=
v><div><br></div><div>Kshitiz<br></div><div><br></div><div class=3D"zmail_e=
xtra_hr" style=3D"border-top: 1px solid rgb(204, 204, 204); height: 0px; ma=
rgin-top: 10px; margin-bottom: 10px; line-height: 0px;"><br></div><div clas=
s=3D"zmail_extra" data-zbluepencil-ignore=3D"true"><div><br></div><div id=
=3D"Zm-_Id_-Sgn1">From: Kwapulinski, Piotr &lt;piotr.kwapulinski@intel.com&=
gt;<br>To: "Kshitiz Bartariya"&lt;kshitiz.bartariya@zohomail.in&gt;, "Nguye=
n,  Anthony L"&lt;anthony.l.nguyen@intel.com&gt;, "Kitszel,  Przemyslaw"&lt=
;przemyslaw.kitszel@intel.com&gt;, "andrew+netdev@lunn.ch"&lt;andrew+netdev=
@lunn.ch&gt;, "davem@davemloft.net"&lt;davem@davemloft.net&gt;, "edumazet@g=
oogle.com"&lt;edumazet@google.com&gt;, "kuba@kernel.org"&lt;kuba@kernel.org=
&gt;, "pabeni@redhat.com"&lt;pabeni@redhat.com&gt;, "Loktionov,  Aleksandr"=
&lt;aleksandr.loktionov@intel.com&gt;, "Keller,  Jacob E"&lt;jacob.e.keller=
@intel.com&gt;<br>Cc: "intel-wired-lan@lists.osuosl.org"&lt;intel-wired-lan=
@lists.osuosl.org&gt;, "netdev@vger.kernel.org"&lt;netdev@vger.kernel.org&g=
t;, "linux-kernel@vger.kernel.org"&lt;linux-kernel@vger.kernel.org&gt;<br>D=
ate: Tue, 02 Jun 2026 19:59:33 +0530<br>Subject: RE: [Intel-wired-lan] [PAT=
CH net-next] ixgbe: implement get_queue_stats_rx<br></div><div><br></div><b=
lockquote id=3D"blockquote_zmail" style=3D"margin: 0px;"><div>&gt;-----Orig=
inal Message----- <br>&gt;From: Intel-wired-lan &lt;<a target=3D"_blank" hr=
ef=3D"mailto:intel-wired-lan-bounces@osuosl.org">intel-wired-lan-bounces@os=
uosl.org</a>&gt; On Behalf Of Kshitiz Bartariya via Intel-wired-lan <br>&gt=
;Sent: Tuesday, June 2, 2026 12:09 PM <br>&gt;To: Nguyen, Anthony L &lt;<a =
target=3D"_blank" href=3D"mailto:anthony.l.nguyen@intel.com">anthony.l.nguy=
en@intel.com</a>&gt;; Kitszel, Przemyslaw &lt;<a target=3D"_blank" href=3D"=
mailto:przemyslaw.kitszel@intel.com">przemyslaw.kitszel@intel.com</a>&gt;; =
<a target=3D"_blank" href=3D"mailto:andrew+netdev@lunn.ch">andrew+netdev@lu=
nn.ch</a>; <a target=3D"_blank" href=3D"mailto:davem@davemloft.net">davem@d=
avemloft.net</a>; <a target=3D"_blank" href=3D"mailto:edumazet@google.com">=
edumazet@google.com</a>; <a target=3D"_blank" href=3D"mailto:kuba@kernel.or=
g">kuba@kernel.org</a>; <a target=3D"_blank" href=3D"mailto:pabeni@redhat.c=
om">pabeni@redhat.com</a>; Loktionov, Aleksandr &lt;<a target=3D"_blank" hr=
ef=3D"mailto:aleksandr.loktionov@intel.com">aleksandr.loktionov@intel.com</=
a>&gt;; Keller, Jacob E &lt;<a target=3D"_blank" href=3D"mailto:jacob.e.kel=
ler@intel.com">jacob.e.keller@intel.com</a>&gt; <br>&gt;Cc: Kshitiz Bartari=
ya &lt;<a target=3D"_blank" href=3D"mailto:kshitiz.bartariya@zohomail.in">k=
shitiz.bartariya@zohomail.in</a>&gt;; <a target=3D"_blank" href=3D"mailto:i=
ntel-wired-lan@lists.osuosl.org">intel-wired-lan@lists.osuosl.org</a>; <a t=
arget=3D"_blank" href=3D"mailto:netdev@vger.kernel.org">netdev@vger.kernel.=
org</a>; <a target=3D"_blank" href=3D"mailto:linux-kernel@vger.kernel.org">=
linux-kernel@vger.kernel.org</a> <br>&gt;Subject: [Intel-wired-lan] [PATCH =
net-next] ixgbe: implement get_queue_stats_rx <br>&gt; <br>&gt;Hook into th=
e netdev_stat_ops interface to expose per RX queue statistics through the n=
etdev generic netlink API. <br>&gt; <br>&gt;The following counters are fill=
ed: <br>&gt; <br>&gt; - alloc_fail: sum of alloc_rx_page_failed and alloc_r=
x_buff_failed <br>&gt; <br>&gt; - csum_bad: maps directly to csum_err, whic=
h is incremented for both <br>&gt;   IP header and L4 checksum errors in ix=
gbe_rx_checksum(). <br>&gt; <br>&gt;Signed-off-by: Kshitiz Bartariya &lt;<a=
 target=3D"_blank" href=3D"mailto:kshitiz.bartariya@zohomail.in">kshitiz.ba=
rtariya@zohomail.in</a>&gt; <br>&gt;--- <br>&gt;This patch was previously d=
iscussed for the net tree: <br>&gt;Link: <a target=3D"_blank" href=3D"https=
://lore.kernel.org/lkml/20260526074744.36315-1-kshitiz.bartariya@zohomail.i=
n/">https://lore.kernel.org/lkml/20260526074744.36315-1-kshitiz.bartariya@z=
ohomail.in/</a> <br>&gt; <br>&gt;Sending to net-next as suggested by Jacob =
Keller and Aleksandr Loktionov. <br>&gt; <br>&gt; <br>&gt; drivers/net/ethe=
rnet/intel/ixgbe/ixgbe_main.c | 16 ++++++++++++++++ <br>&gt; 1 file changed=
, 16 insertions(+) <br>&gt; <br>&gt;diff --git a/drivers/net/ethernet/intel=
/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c <br>&gt=
;index bc16e4c93fd4..05d4b8aff1fc 100644 <br>&gt;--- a/drivers/net/ethernet=
/intel/ixgbe/ixgbe_main.c <br>&gt;+++ b/drivers/net/ethernet/intel/ixgbe/ix=
gbe_main.c <br>&gt;@@ -9759,6 +9759,21 @@ static void ixgbe_get_stats64(str=
uct net_device *netdev, <br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;stats-&gt;rx_misse=
d_errors&nbsp;&nbsp;&nbsp;&nbsp;=3D netdev-&gt;stats.rx_missed_errors; <br>=
&gt; } <br>&gt; <br>&gt;+static void ixgbe_get_queue_stats_rx(struct net_de=
vice *dev, int idx, <br>&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     struct netdev_queue_=
stats_rx *stats) { <br>&gt;+&nbsp;&nbsp;&nbsp;&nbsp;struct ixgbe_adapter *a=
dapter =3D ixgbe_from_netdev(dev); <br>&gt;+&nbsp;&nbsp;&nbsp;&nbsp;struct =
ixgbe_ring *ring =3D adapter-&gt;rx_ring[idx]; <br>&gt;+ <br>&gt;+&nbsp;&nb=
sp;&nbsp;&nbsp;stats-&gt;alloc_fail =3D ring-&gt;rx_stats.alloc_rx_page_fai=
led + <br>&gt;+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;    ring-&gt;rx_stats.alloc_rx_buff_failed; <br>&gt;+&nbsp;&nbs=
p;&nbsp;&nbsp;stats-&gt;csum_bad =3D ring-&gt;rx_stats.csum_err; } <br>&gt;=
+ <br>&gt;+static const struct netdev_stat_ops ixgbe_stat_ops =3D { <br>&gt=
;+&nbsp;&nbsp;&nbsp;&nbsp;.get_queue_stats_rx&nbsp;&nbsp;&nbsp;&nbsp;=3D ix=
gbe_get_queue_stats_rx, <br>&gt;+}; <br>&gt;+ <br>&gt; static int ixgbe_ndo=
_get_vf_stats(struct net_device *netdev, int vf, <br>&gt; &nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;  struct ifla_vf_stats *vf_stats) <br>&gt; { <br>&gt;@@ -11662,6 +11677=
,7 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_=
id *ent) <br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;hw-&gt;phy.mdio.mdio_write =3D ix=
gbe_mdio_write; <br>&gt; <br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;netdev-&gt;netdev=
_ops =3D &amp;ixgbe_netdev_ops; <br>&gt;+&nbsp;&nbsp;&nbsp;&nbsp;netdev-&gt=
;stat_ops   =3D &amp;ixgbe_stat_ops; <br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;ixgbe=
_set_ethtool_ops(netdev); <br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;netdev-&gt;watch=
dog_timeo =3D 5 * HZ; <br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;strscpy(netdev-&gt;n=
ame, pci_name(pdev), sizeof(netdev-&gt;name)); <br>&gt;-- <br>&gt;2.50.1 (A=
pple Git-155) <br> <br>Reviewed-by: Piotr Kwapulinski &lt;<a target=3D"_bla=
nk" href=3D"mailto:piotr.kwapulinski@intel.com">piotr.kwapulinski@intel.com=
</a>&gt; <br></div></blockquote></div><div><br></div></div><br></body></htm=
l>
------=_Part_34936_2033178056.1780508779645--

