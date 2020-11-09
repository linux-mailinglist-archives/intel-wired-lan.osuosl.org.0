Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9AD2AC4F5
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Nov 2020 20:29:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B967886382;
	Mon,  9 Nov 2020 19:29:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5cllXtmWWncY; Mon,  9 Nov 2020 19:29:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A5F1885BB0;
	Mon,  9 Nov 2020 19:29:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 695AC1BF383
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Nov 2020 19:29:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6081985F80
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Nov 2020 19:29:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aSzq1wQMeCyW for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Nov 2020 19:29:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0FBB285FD4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Nov 2020 19:29:11 +0000 (UTC)
IronPort-SDR: YB7FTujGhNrgvXLL5l9MboTUNAZagQEaPgveMGQFaz3+G5bVKvqcviyMXInjMMA8I1sNxBul39
 1/rBqYea4NEQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9800"; a="149138626"
X-IronPort-AV: E=Sophos;i="5.77,464,1596524400"; d="scan'208";a="149138626"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2020 11:29:10 -0800
IronPort-SDR: a4MqeOz8+zaVytsDA5V77ULxpHEHrjSQXOR5k8AYoyajbPgBAXI7E6ByKVu6Ow8FU/17YUKsc2
 sD/0iZ145Keg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,464,1596524400"; d="scan'208";a="338459824"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 09 Nov 2020 11:29:09 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 9 Nov 2020 11:29:09 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 9 Nov 2020 11:29:08 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 9 Nov 2020 11:29:08 -0800
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.56) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 9 Nov 2020 11:29:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CxIMyCOhT+iU5pc6sOYqVOY67EEtRIjgFNysgqTtQ5/5kQpfgg6djfkyZvOTTjVLK/0c7CxhON9VgPVbBFbBhGhkzjgWtgHHzrLHiAxxDGI6WfXG8q8Vn73ph/1xYhEA5eVzTYjdxkhoLojLZTHha3Q95JFnycBy/DL/EfnctpXOZ+cXfbSTFLMKnpW6YsSD+QQf2cvsD+pgetsR8gpt6NaFGC/V191Yb1vpuUbJ/Bh6/YheLmKkdngU8Nr8RvWgA4ddfbOC/HtYaVuj81pf5SYqQfDHUSS0JqR4PrKruogpnwm/VIRRjYl0R+/1s2hG4QcSVVcNEtozC5XEtVDe/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XUGFy6hdNzRAgcGynRqS6dVBVxULb0NS06JrWtXbMR4=;
 b=Xb65jbbky09nEHmxN+bJ0EMa8edUmdTU0y+m8JSeoEEXo0W1aVtUCYtiMzPeb2y8Na5LBKgI043uiQsqTwrY2vRoFU8WRmtkzvWscKdr8VUPLaIYGDtck1F02oaYV7bTGd4hdDs6mtB9dNPM14Pg8AiKFbl78vHuuOT1YL/rJkEf+dGRy/9m8uGypnIRsz2Sc0B25vRvXi/SG4jQBPhtsVj82AKU7J4sHddjp7uA8eXYK3u3gseKu2DLFUQ+vwdqzITXFWQuBHixiZ4yoWY++DID+X92K2OlLu3/h0bn5uXmc6fMfxS3gU/vunsxSXwjzNga0ICS09xKUDIQ1Djzcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XUGFy6hdNzRAgcGynRqS6dVBVxULb0NS06JrWtXbMR4=;
 b=THJOayJ/45rVJzmBFuC95AGRqXNH273lH4BTBhgJcXtOj0pM+JrfuT3zS82BGLYivHqpUZPCe0B6nyl2i3SSrXRjUpIu54pR04Li5E40YwdYzy5lctumAH4/hT+z7ca7QdFMgxVxsAClAtKeDkJkow3WacvgSVtq0iWOzNu8sxg=
Received: from BN6PR11MB1572.namprd11.prod.outlook.com (2603:10b6:405:e::9) by
 BN6PR11MB1748.namprd11.prod.outlook.com (2603:10b6:404:101::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.25; Mon, 9 Nov
 2020 19:29:04 +0000
Received: from BN6PR11MB1572.namprd11.prod.outlook.com
 ([fe80::986d:dc56:6978:c118]) by BN6PR11MB1572.namprd11.prod.outlook.com
 ([fe80::986d:dc56:6978:c118%11]) with mapi id 15.20.3541.025; Mon, 9 Nov 2020
 19:29:04 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: Fix MAC address setting
 for a VF via Host/VM
Thread-Index: AQHWogeubb3E7cRfgE233UQ5d+pjFKnAWNkA
Date: Mon, 9 Nov 2020 19:29:04 +0000
Message-ID: <BN6PR11MB157239BE39BB533C75FED42BABEA0@BN6PR11MB1572.namprd11.prod.outlook.com>
References: <20201014085409.13389-1-mateusz.palczewski@intel.com>
In-Reply-To: <20201014085409.13389-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [188.147.96.136]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: baa17ee8-98fb-4ef5-c697-08d884e5b810
x-ms-traffictypediagnostic: BN6PR11MB1748:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB17482A2AB59134D938B52DF5ABEA0@BN6PR11MB1748.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gg7++qDKmw+YchrLJripK6jZhGQuYqJjotnrUTdU7SeO4D9x/33MBgxWZADWntUCGZyY0a0e3ZBkREXUpkey+HBaZ7xYZTomZdRbktuidJTgvg2kom/g9gpqEPJ3TAlJS0wE9qlzYpYxodEDEJAmcQfI7t4dTIaXpC/30LTjrVSM4X5tn8LXMCgwj9eY+NO9YU0rzAfVfbLsNsXe/DmPATZsEPzZJ74GcsiGnC3aaO/L5zJQaYqawdwXvaOJ2gCExSPMxf6jrOpVRyYjyqIwFoTsh+bvAtfN5je8EaECCxLP9Ve4krwPl/qcx2qucnUN2grIswUxekf4Cl+9oTU5gByj8RVqwMT63CPXxkU0thloIVdGSXVrVB0psc58fsZO/IQzgVNdMcBNk5dgL/OCFA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR11MB1572.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(39860400002)(366004)(136003)(346002)(396003)(478600001)(8676002)(316002)(7696005)(2906002)(26005)(8936002)(71200400001)(107886003)(110136005)(966005)(53546011)(4326008)(6506007)(33656002)(66446008)(76116006)(55016002)(52536014)(83380400001)(186003)(9686003)(5660300002)(86362001)(66574015)(66556008)(64756008)(66476007)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: quvshGmrGGdpk5qur4dSK1trO5d7K6iZxzkYx6BXgmoZr5Umw293wC/ksdQhtQoH+PECCmqPNbovuV17epcgY/rn6v8760kTd/JbbxxckNKbOaUOI1z8bCTAs2Q1VJP74k1iS1GL/jivNsysfCqo5ZCwsLtt63rziMTRudoHHWEq8uGNb+oN2bqKI4+ZcMhQR4O7yZH/zqS318WlGAeMFenXEugn8YInPt1+YOud408F+aspfWfXxrBMrxFTxPRJkSZtTgV2J+BdYFzitd6XL+2RfRFAGnaZkNkh8ZVCtSYVGtWtWdxKYBG/HqesoT73njdosQp/ZCKE+86JlcDCuR4qnH+jMTu9f8xgQt6INMY39b+N/t+xmVq7VbM4Mg1dFdizqtcxnZUX8rPO1NoJ+FBFyLFWyrS9v7Pr8NSqP0IaQHr9/AGtC2Cavt9HI1b9o4ooHbGz9oAF/95NnEzLTBbTf4yGazS2lbiMwnl7Kayt5+Q6sy0R0oLEqK6hb9/wK7cgXGOI3Fya4k96et2ofQ1+tHZoUbh566Ffp2vIkWVr9wIRZtbGUAurKi5w6tGFwYG8CqJDBTGI0gV0QrTUdsXamosWkVrABVZopOfDdj6DGzDYdnWbbc/wJxrFNrkEAfyoLvn8jTSNjc+/dD3HqQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR11MB1572.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: baa17ee8-98fb-4ef5-c697-08d884e5b810
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2020 19:29:04.2489 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q57Cuqx2PZVJF0CDfKHgE1ksAM2tXDlGnE0hDkW8+ev8+YnIc/Yl5dWTeziaWbjr2PiGK7uivlHOYqaU2sb6bp58HlFSR0u2MS+/zSq1ir0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1748
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix MAC address setting
 for a VF via Host/VM
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Mat=
eusz Palczewski
Sent: =B6roda, 14 pa=BCdziernika 2020 10:54
To: intel-wired-lan@lists.osuosl.org
Cc: Laba, SlawomirX <slawomirx.laba@intel.com>
Subject: [Intel-wired-lan] [PATCH net v2] i40e: Fix MAC address setting for=
 a VF via Host/VM

From: Slawomir Laba <slawomirx.laba@intel.com>

Fix MAC setting flow for the PF driver.

Update the unicast VF's MAC address in VF structure if it is a new setting =
in i40e_vc_add_mac_addr_msg.

When unicast MAC address gets deleted, record that and set the new unicast =
MAC address that is already waiting in the filter list. This logic is based=
 on the order of messages arriving to the PF driver.

Without this change the MAC address setting was interpreted incorrectly in =
the following usecases:
1) Print incorrect VF MAC or zero MAC
ip link show dev $pf
2) Don't preserve MAC between driver reload rmmod iavf; modprobe iavf
3) Update VF MAC when macvlan was set
ip link add link $vf address $mac $vf.1 type macvlan
4) Failed to update mac address when VF was trusted ip link set dev $vf add=
ress $mac

This includes all other configurations including above commands.

Fixes: f657a6e1313b ("i40e: Fix VF driver MAC address configuration")
Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 25 +++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/n=
et/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 8e133d6..ef96f68 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2702,6 +2702,10 @@ static int i40e_vc_add_mac_addr_msg(struct i40e_vf *=
vf, u8 *msg)
 				spin_unlock_bh(&vsi->mac_filter_hash_lock);
 				goto error_param;
 			}
+			if (is_valid_ether_addr(al->list[i].addr) &&
+			    is_zero_ether_addr(vf->default_lan_addr.addr))
+				ether_addr_copy(vf->default_lan_addr.addr,
+						al->list[i].addr);
 		}
 	}
 	spin_unlock_bh(&vsi->mac_filter_hash_lock);
@@ -2729,6 +2733,7 @@ static int i40e_vc_del_mac_addr_msg(struct i40e_vf *v=
f, u8 *msg)  {
 	struct virtchnl_ether_addr_list *al =3D
 	    (struct virtchnl_ether_addr_list *)msg;
+	bool was_unimac_deleted =3D false;
 	struct i40e_pf *pf =3D vf->pf;
 	struct i40e_vsi *vsi =3D NULL;
 	i40e_status ret =3D 0;
@@ -2748,6 +2753,8 @@ static int i40e_vc_del_mac_addr_msg(struct i40e_vf *v=
f, u8 *msg)
 			ret =3D I40E_ERR_INVALID_MAC_ADDR;
 			goto error_param;
 		}
+		if (ether_addr_equal(al->list[i].addr, vf->default_lan_addr.addr))
+			was_unimac_deleted =3D true;
 	}
 	vsi =3D pf->vsi[vf->lan_vsi_idx];
 =

@@ -2768,10 +2775,24 @@ static int i40e_vc_del_mac_addr_msg(struct i40e_vf =
*vf, u8 *msg)
 		dev_err(&pf->pdev->dev, "Unable to program VF %d MAC filters, error %d\n=
",
 			vf->vf_id, ret);
 =

+	if (vf->trusted && was_unimac_deleted) {
+		struct i40e_mac_filter *f;
+		struct hlist_node *h;
+		u8 *macaddr =3D NULL;
+		int bkt;
+		/* set last unicast mac address as default */
+		spin_lock_bh(&vsi->mac_filter_hash_lock);
+		hash_for_each_safe(vsi->mac_filter_hash, bkt, h, f, hlist) {
+			if (is_valid_ether_addr(f->macaddr))
+				macaddr =3D f->macaddr;
+		}
+		if (macaddr)
+			ether_addr_copy(vf->default_lan_addr.addr, macaddr);
+		spin_unlock_bh(&vsi->mac_filter_hash_lock);
+	}
 error_param:
 	/* send the response to the VF */
-	return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_DEL_ETH_ADDR,
-				       ret);
+	return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_DEL_ETH_ADDR, ret);
 }
 =

 /**
--
2.17.1

Tested-by:Konrad Jankowski <konrad0.jankowski@intel.com>

Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gos=
podarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapi=
ta zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i mo=
e zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci=
, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek prz=
egldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the s=
ole use of the intended recipient(s). If you are not the intended recipient=
, please contact the sender and delete all copies; any review or distributi=
on by others is strictly prohibited.
 =


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
