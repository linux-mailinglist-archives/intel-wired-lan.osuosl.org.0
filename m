Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E4A80D27B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Dec 2023 17:42:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE5374189F;
	Mon, 11 Dec 2023 16:42:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE5374189F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702312969;
	bh=xALnhbqkWa6KgKEInBmMbbQ9/nmPc2Ateik51VozSZg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0abYiS0wVzaePgvIi4Gyk4AwfvWNzbh0dVDnkQoGtDRFTqC0rtBdqBnhyEmp4z5Ty
	 3+NYSwwC7F2BLpn1XRewewk4NpQi6xdJBKNooNUw9Pj0gQPmCxU1li0/QieBUUhv1j
	 ei+yXSuBpbnWAtkSr8s1J9npXmeEGJlfqoHDQlSJDghRoQp8Qh2TNPB+tCDFT+98gk
	 ufQDeXvm2jPLKyKToHxQWJgkk8jcPM3Ara5+Si3063IU52ZgTsRwDUmHJU4in242wI
	 c9pcDNhuB+N0cKV0k6DB/0GNrBkSK0bNpNgSXfJfAbPVwYMTg4b/e8DVymV6WJIAOK
	 pBUYcEtsy7gAQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0vY8Rj5OmBRq; Mon, 11 Dec 2023 16:42:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8698240544;
	Mon, 11 Dec 2023 16:42:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8698240544
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6B1571BF342
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 09:21:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2D041416D6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 09:21:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2D041416D6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VhFUZGCC2hcT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Dec 2023 09:21:11 +0000 (UTC)
Received: from FRA01-MR2-obe.outbound.protection.outlook.com
 (mail-mr2fra01on2042.outbound.protection.outlook.com [40.107.9.42])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 39245416D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Dec 2023 09:21:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 39245416D3
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N7mcOeS7tynqSmldQL+6D+FQ3YtZBGvCvV94pYP1DN4fKHA/DsEjBWJfw+5KwjseYPr51NTXodQ5M/zebtFcqgzje97uK2wQWXXf6m+7VWFnuLyGMQwghbDnwmHh+VfvIpJWsC7w37G0/844tdHa0MwuYzXpOlrTKs069bDZRn0qo/zWD99GaCBjux546sorVqgH+8Mnv8HmUjltEqEpZiCP1xR6ziA6v54VTHQN+tx3Rvz6zGwDQ45lAeK+Ovh3osKDAZMtxbutiaZFvElmJITFNyIK8VdVQYRf9Cp7B2Vn2Gv5n7JavS+xfKh3Sp0U0A9L+YsrLZ/85KWOj2yVWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=awwjAMgbXXYN54U1bi/n81pbAi8/wZat4WA8YvoDdj4=;
 b=Am75HVnF2dSaptwcnJnf4aTLaPKxn3Dbc4So2We0V66Em1V06DQcaKmOp0AqE0HIqo05ngbm9suLlF9ga7PR8kMXNaSukhvhCY7RZigAyLxM3LwpnMaFPk4XDXmtfijoOHPkX1t0ierwuKKkwpKzxs8ZTmU+TN85TH0QhV6X+Zp9h8boSsVos7eW/nNLyea8gnuuAulYDMmhWdPEavL4h6ZVn56EpB+JVhIq8zPTW72w4lfXZ8gUY6v3GZarLCuJfhqPr6Ld78Mi9dn4rGs1gzqLyJQxxKvwSaYIeAwXXN0lqXfRIj6y5Dc8Choxyenpy2yh3eNUrZXdAAsrTs5EHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=l-acoustics.com; dmarc=pass action=none
 header.from=l-acoustics.com; dkim=pass header.d=l-acoustics.com; arc=none
Received: from PR0P264MB1930.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:166::9)
 by PR0P264MB1675.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:16e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.32; Mon, 11 Dec
 2023 09:21:06 +0000
Received: from PR0P264MB1930.FRAP264.PROD.OUTLOOK.COM
 ([fe80::4d53:e595:fb67:236c]) by PR0P264MB1930.FRAP264.PROD.OUTLOOK.COM
 ([fe80::4d53:e595:fb67:236c%7]) with mapi id 15.20.7068.031; Mon, 11 Dec 2023
 09:21:06 +0000
From: Rodrigo CADORE CATALDO <rodrigo.cadore@l-acoustics.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>, Rodrigo Cataldo via B4
 Relay <devnull+rodrigo.cadore.l-acoustics.com@kernel.org>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Aravindhan
 Gunasekaran <aravindhan.gunasekaran@intel.com>, Mallikarjuna Chilakala
 <mallikarjuna.chilakala@intel.com>
Thread-Topic: [PATCH iwl-net] igc: Fix hicredit calculation
Thread-Index: AQHaKecFHk6smFyQW0il44pqHqUJh7CgIKqAgAOvtWA=
Date: Mon, 11 Dec 2023 09:21:06 +0000
Message-ID: <PR0P264MB1930850228C3F58EE8B7F9FAC88FA@PR0P264MB1930.FRAP264.PROD.OUTLOOK.COM>
References: <20231208-igc-fix-hicredit-calc-v1-1-7e505fbe249d@l-acoustics.com>
 <871qbwry9y.fsf@intel.com>
In-Reply-To: <871qbwry9y.fsf@intel.com>
Accept-Language: en-US, fr-FR
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR0P264MB1930:EE_|PR0P264MB1675:EE_
x-ms-office365-filtering-correlation-id: c8d76467-707b-4ad4-63a9-08dbfa2a8148
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: q4XhDGZ1LlNU2QS56YsNCrHn3Zhh0rjExNS2Vg5VgHS5PPN5v6bVC3CA9/WkEycf9ToQtAvqKNOX3NfD/Q2QRSUZRJcwtI0aFjTAc2ORHSWG+oHPs2ajyL7LQkOk9Hwyedjo+pAMI+x6hTCs3cxf/5j5GllDVOsiFOf/+boCaKgeVG/11hGhmsOieXBgXm46PpmcWdqpHndGioQFSCAft6vCNRL5GejZz1toLD0WEasDKbJs1bqdIZBV0GYagLNLeJHbi43UyhIEbHbNEZqhh8U0euP5HckivVD6OO2G25T71cqSHMVz4lrnyE0AKKttfbfCTqhrHvFl/LSI27M1vXxYPOtnZcxLvPUcHGCej9ZW3z1yRGzhEdMIDgBlH9fYhJbBqhAl7RwAdT/qmJrwDKlxQyLN3fgLq8Wzm0ETQOC9HKCayZjOCYSJlq1KEISpYIpQoWWjcMKCjqgRnN6O8teVVVjeq9VmMOhurhKsOLYFATGFNjIfUITopMTfNbCQJH/2uEys+lSRpuRq5RB8ojoVFgh+EwKJO7MuXfqaLEVBYm0VViqGUjwWgPkbbw0kA9ryZHTjYr3nag1cnSb2+AXDxrJd08Rn3OfO8bEOrj/P4G8BwvKqEkin/mpxpAnrAdLBQ7XtFwvyUHOfHZk2yiCGuY9uLiged/CTj4vl8YQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PR0P264MB1930.FRAP264.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(346002)(39850400004)(376002)(366004)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(9686003)(55236004)(26005)(478600001)(7696005)(71200400001)(6506007)(83380400001)(7416002)(5660300002)(41300700001)(2906002)(76116006)(54906003)(66446008)(64756008)(66476007)(66946007)(110136005)(52536014)(316002)(66556008)(8936002)(8676002)(4326008)(38070700009)(38100700002)(921008)(86362001)(122000001)(33656002)(55016003)(341764005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VBSXMZnUKBtkcZvu7m2bNqOnTpTyzD3Tf37eyvO8G88Xjvr9AVPcUXjq/YcV?=
 =?us-ascii?Q?2O5WAqY1pMzbsNfpwk4aeYVXKkDC3Xk4uv4/2+SYdJcIjv2HbaOKol3pY6An?=
 =?us-ascii?Q?z10AWp4UoElysByiePBzvv9+YBhVH4yTolNSMyze2XOSUA1q7p/OS7VvJk58?=
 =?us-ascii?Q?D4A/1XRXznqjzs9v7VO4Ld9hN8tGmGvghUw5jr2kI2g0hoKvK9LmMa0Ixqqj?=
 =?us-ascii?Q?pr3px1Ffp9S+pW86mIxVjFMuvOhnwBnW/Tv29+uVJuaUZH1zpU0ceCj+4EMC?=
 =?us-ascii?Q?tEm5IQDYXZhMy1ESB8fkzacoFE7Elbqsa9dHCdYYTcqgyVLoAqygC0CAMmmB?=
 =?us-ascii?Q?h3TiYVSZbhoCqK4l4kXIyq/09sdZ/WgqRI+9OVMVHAf+uhwkXyBhB/NQnRh0?=
 =?us-ascii?Q?uoTHAwTKjaO6eZrmi2ubEBhiZWo0KQHmOjPYTAyHv9XRWB9o7GU0/wIAjrZs?=
 =?us-ascii?Q?3Qj5lkia22xXXPMNCNKcVQiZFmLlSpVEJYnaP+b14VvKTbqPzIxbWnPM5D4X?=
 =?us-ascii?Q?K0JFsDEOom9CMv6xxZHz5Sis7JV+8FHYdSmwTYTsWN+1YdNTe81agfVRDdlu?=
 =?us-ascii?Q?5ni2atVZnOi5CHAwkP6/HAFhc2D6w+0/BsB8BPfyzxbeWWrdO0Ci5WLfRAvE?=
 =?us-ascii?Q?xj/zEKFpSuNHkPlZ3asOUqCPSw/x8Gz9vi8445NJELpST7DRuCg/gJyF0ykw?=
 =?us-ascii?Q?INvBdtnD68FmrYknyY3Uj2zcmDfp5DRgXBC99DUhTF3F8+2bv2ChtG9Sdozt?=
 =?us-ascii?Q?l+Ruc3LwgzcwacVMN3JjZQlKkzlSSVWLAnUX10MJysQ3ocXuXXb3vnXvoEAW?=
 =?us-ascii?Q?wmnfweTubxf08FRoV+aMRWT21aqR22pOVNqBNROKxTR50R+y4KH9yIM10wiW?=
 =?us-ascii?Q?EKcJUAJ/S3RlTV/dwszLlHvPEroLIa7cK5FQEuTfKEdWqjEAXmRyZu1N8ngz?=
 =?us-ascii?Q?sx8UQIGg9WQsDbNxk0O3ba7pv+8WjSYgrtqg2TR6eOO6h8LlLmkYNcC9kc3h?=
 =?us-ascii?Q?GCt8torB/dCQlzlclolAHgZu0vs4sNtfRI4Hn/BmpVLb3OjjzIpGbmLFTLc2?=
 =?us-ascii?Q?oh84ZYOUoXOp+yklwhkmGtsaQWgzw7HYLJCG1+morz7NYkd/ST5gopZWWgJo?=
 =?us-ascii?Q?aivkuqri8Ek1rLuBYnQcwlJJoylXbs4AfqeJyvIgltUjDsFiR7ESDOSM6XcT?=
 =?us-ascii?Q?fNy6re+6FMPvy+NAr0WvLcqFDZ6vRbRoazG7sEN+eDI2h9rP+XLkdlAbLuhy?=
 =?us-ascii?Q?Z/ZTTJu0kqOl9P/iOJ31ZN4VLdMI0zAVAwt2P9hZVfGUasjDCjOf9es5AgSw?=
 =?us-ascii?Q?jHg+Nb+AoQwDCpg1X/1b5BS2CRa6Mreys8X2xpvl14zrR93B3dX97u8MctkD?=
 =?us-ascii?Q?6ho2aCPbO1WrnyV22nPSERJZnK7p0gWjX2hhpF8560/cghr34tz5foRfrs3m?=
 =?us-ascii?Q?aXx8BBrz9YeXIyKsyDOQpz7hd84lbfzaDiwBFWam8BXCGAGXeUHtIcoknzSk?=
 =?us-ascii?Q?pq2sUwH1dgPOWSsG39XchyZnCUb8PFzrOuwdjMcLy6wvDY9iaBSw69ClRaqd?=
 =?us-ascii?Q?oQMqeirl2ihWMEmeKu5JXOWtfx85uGChh+gd4wPjj+kp+knzDTA/6quuDZkh?=
 =?us-ascii?Q?2A=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: l-acoustics.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB1930.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: c8d76467-707b-4ad4-63a9-08dbfa2a8148
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2023 09:21:06.7155 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 68e431e8-d632-483e-ae79-f28a7b4c69e6
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BIubNvrBLx31+S2mEAu2McHrsEn8e3zHteKhDAXR0Cl5ZhXoxN2OYi3VBUV+55nxEm8aPBq/o8lVKIja4Xv8Kc7/oztH3Mvg0nlXi6h3Oqg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR0P264MB1675
X-Mailman-Approved-At: Mon, 11 Dec 2023 16:42:26 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=l-acoustics.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=awwjAMgbXXYN54U1bi/n81pbAi8/wZat4WA8YvoDdj4=;
 b=QoaMBSeDmaBICyEw4SAagOKJQyV2r6m1VxZA/hNTqRhnm0oQqYQ2p/PjXHpAqbn8Cd5L5/4c4H7y5DDm8GXtpEvkzkdK8/WW7zvkWgMpvAkAVFxjYSwvhHjCWD3WP43l5g2wCOLu1PMEnT+WZCfaSa16bP09JQ8kqw4yx3KtdU4=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=l-acoustics.com header.i=@l-acoustics.com
 header.a=rsa-sha256 header.s=selector1 header.b=QoaMBSeD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=l-acoustics.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] igc: Fix hicredit calculation
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Kurt Kanzenbach <kurt@linutronix.de>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> 
> Rodrigo Cataldo via B4 Relay
> <devnull+rodrigo.cadore.l-acoustics.com@kernel.org> writes:
> 
> > From: Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>
> >
> > According to the Intel Software Manual for I225, Section 7.5.2.7,
> > hicredit should be multiplied by the constant link-rate value, 0x7736.
> >
> > Currently, the old constant link-rate value, 0x7735, from the boards
> > supported on igb are being used, most likely due to a copy'n'paste, as
> > the rest of the logic is the same for both drivers.
> >
> > Update hicredit accordingly.
> >
> > Fixes: 1ab011b0bf07 ("igc: Add support for CBS offloading")
> > Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> > Signed-off-by: Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>
> > ---
> 
> Very good catch.
> 
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> 
> Just for curiosity, my test machines are busy right now, what kind of
> difference are you seeing?
> 

Hello Vinicius, thank you for the ACK.

For our internal setup, this does not make a difference. My understanding is 
that hicredit is used for non-SR traffic mixed with SR traffic (i.e., hicredit is
directly related to the max non-SR frame size). But our setup does not mix
them (q0 is used only for milan audio/clock SR class A).

Let me know if you think we need a testcase for this.

> > This is a simple fix for the credit calculation on igc devices
> > (i225/i226) to match the Intel software manual.
> >
> > This is my first contribution to the Linux Kernel. Apologies for any
> > mistakes and let me know if I improve anything.
> > ---
> >  drivers/net/ethernet/intel/igc/igc_tsn.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c
> b/drivers/net/ethernet/intel/igc/igc_tsn.c
> > index a9c08321aca9..22cefb1eeedf 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> > @@ -227,7 +227,7 @@ static int igc_tsn_enable_offload(struct igc_adapter
> *adapter)
> >                       wr32(IGC_TQAVCC(i), tqavcc);
> >
> >                       wr32(IGC_TQAVHC(i),
> > -                          0x80000000 + ring->hicredit * 0x7735);
> > +                          0x80000000 + ring->hicredit * 0x7736);
> >               } else {
> >                       /* Disable any CBS for the queue */
> >                       txqctl &= ~(IGC_TXQCTL_QAV_SEL_MASK);
> >
> > ---
> > base-commit: 2078a341f5f609d55667c2dc6337f90d8f322b8f
> > change-id: 20231206-igc-fix-hicredit-calc-028bf73c50a8
> >
> > Best regards,
> > --
> > Rodrigo Cataldo <rodrigo.cadore@l-acoustics.com>
> >
> 
> Cheers,
> --
> Vinicius

Best Regards,
Rodrigo Cataldo
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
