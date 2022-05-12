Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D20052541B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 May 2022 19:51:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E008560B8E;
	Thu, 12 May 2022 17:51:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FK1OfhJRmsH3; Thu, 12 May 2022 17:51:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDE3660AB0;
	Thu, 12 May 2022 17:51:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 229621BF86C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 17:51:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0D51441719
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 17:51:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=nxp.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MKYSUn9pR7K2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 May 2022 17:51:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05on2055.outbound.protection.outlook.com [40.107.21.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1311C41710
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 17:50:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iYSnQVMqYwsMfFJ0veuSQoTZYQBHqt/3UTsyPUtX9+1WktB+OIpVi+B/j0qKtBLlnmUHKtA3+SrrVC9vbqwZDt+qpQ0ZLFsBFIPgDcfvPC6Qn0Hs2sgrnTIjFPFaMibG6j8g9GhoOIaRDfotWbKigj18J5Ow5KoKZ2aNm2eYvUQY7wmDlmPAGxBRPINA/lDeq6pzb7pWqoweb5t3aa3QrpVQkS59/7+tFeWHV18YbbBsOzUAdsXucZu8cfyRI/05FQwkwSufKF0kKGyZYpgmNBU+gsOh3i20fFXTitakp6iVzZS/qZ98YO9QDuIHMzip4sbsj+/WCVOttJozOZ6oqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VSWYUfdKb47f1Ctp8M5EvyOjUh/+POZHDVSpFR8FCpI=;
 b=j46ijVhOSicK/qBh3I9k3zxAAqR4GJuoMfZpMX5WugOD+OKj+qdNYinwHo+lb/TBaPy2Se4LXMzqvV6qIvhhDOC5rxHOZlB/FYhodHUp5zs0pNT1aDv0KhB9VFEAeep/+Q55mw73KK09TXQ1f+1aZkZwYX3rhoTOrORHYAy55zMdyZMG9BuEuoHAtFZD+7F0omx87zRy28we/Vc0XJtn6TSFSXiU4GuDjb72B8mvnFBNdC7O0Rtlw6NcfAmBWLmPjnE0V5D1s8QEgm145dv9rLuUf/46mU9poUZrTLWVSxB5QxAzEi82ktKjN1NmtGyudKyGChsTz9eHKzJy5QA5+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VSWYUfdKb47f1Ctp8M5EvyOjUh/+POZHDVSpFR8FCpI=;
 b=oFFBe2+Qjjza1eZgP94WQEGMH7IXu44CJMLRPp6XljyoggOAiBftzTMGbQHyPR9a02aDIw61M8Zj+/3EGxYbO2Q2U2/0UXYeE07aGGh/lt4ZRgzgbnl+j5HZxkrHyX/FfV2llwIR9mjJ6kJ226th+kvsE8vVQ/eW2x/TYpfgLGk=
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com (2603:10a6:803:55::19)
 by AM5PR04MB3153.eurprd04.prod.outlook.com (2603:10a6:206:e::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.13; Thu, 12 May
 2022 17:50:56 +0000
Received: from VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::fd1f:cc16:dafe:4bf5]) by VI1PR04MB5136.eurprd04.prod.outlook.com
 ([fe80::fd1f:cc16:dafe:4bf5%5]) with mapi id 15.20.5250.013; Thu, 12 May 2022
 17:50:56 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
Thread-Topic: [PATCH net-next v7 2/2] net: vxlan: Add extack support to
 vxlan_fdb_delete
Thread-Index: AQHYZeaGVmJ2NLPAj0ictYFP1xlh760bbReAgAAHG4CAAAg+gIAACWuA
Date: Thu, 12 May 2022 17:50:56 +0000
Message-ID: <20220512175055.65ftcpkig3t3ttsq@skbuf>
References: <cover.1652348961.git.eng.alaamohamedsoliman.am@gmail.com>
 <c6069fb695b25dc2f33e8017023ddd47c58caa8d.1652348962.git.eng.alaamohamedsoliman.am@gmail.com>
 <c5ec2677-3047-8a70-9769-d48a79703220@nvidia.com>
 <20220512094743.79f36d81@kernel.org>
 <c6b41db9-78e7-e752-3945-29c70a3d8cb4@nvidia.com>
In-Reply-To: <c6b41db9-78e7-e752-3945-29c70a3d8cb4@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f3225fac-f5d6-4be9-b3fc-08da343ff772
x-ms-traffictypediagnostic: AM5PR04MB3153:EE_
x-microsoft-antispam-prvs: <AM5PR04MB31534F1013E313B02D3D9720E0CB9@AM5PR04MB3153.eurprd04.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3TGAZGmRMn+oK1YZVYxMHFTwaFjfUR7dxWPytZGMdMpsZdibj1jP0L+EtWDQGkqrHf2y6vM8TbgZL7K/xNyZ6ceEmTHrD2JTr/rGF2cCGBoXYWOUjYUhrEJGnL8jHnEWmxCwSein5xxVmn8/ivkUQTn2UytaYgOL1VHUUn6gpyLk7VedRyvP9OT/x/lrvNF4zlnEhSvqZg6xD2qexN+AoC15a8mUH2Hb+S99mAYF3nU3muuZWIJ1+/AlWjRz0NSHMeGf+dCVxIjxGfBx91ceFKbZQ5XPBkfX8jcQ38iecZrDzZGs2NO5HTZM8SzcEaPRtfEeQXuOlk6T/hEihKNocdanUbE1qi8Bq4NDsF7h919wQsSXwUYu5hYgORgm1UKmdFLuCtNItxdr32JocJT+lyQ/g3S7sPj7kl1M1z/ofCw0X7N4cxg2SYbjGa5GPh8zehbYAAQiTjND7T3YZEsa48Ae/L3/ndkKOCSCT71nCgxyepuo6m7AK8IyN4Vu1R1r+qEVXSEOyLgGH9BGwjp4ws9XA8sKQS3Sbf11OJvh8rSGnleGwOJdM4tq/1fVSrjnOquOElENq9AJ1/sptxwbKC/zGD/F3hslkm6eZEOV0Z/oqrNsItLvZGhLsTx8eIPlmLhPiBbjQ8+CnP9R0HfBvOW0V9y9/RVIjYm3GE6AhB7l3nDWVMwLm53on7z8gc9BLSsH7NU3inf/knqltcCanM/6s/xQiYqPbJgXhMHzGHV4XlQL0jbPMO/lk8YRCo1Z3Vq1DnCGTssXKWJRX/oM/W7xNMKOmVU9FQhcqSoa2Hc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB5136.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(7916004)(4636009)(366004)(33716001)(316002)(86362001)(8676002)(83380400001)(91956017)(6916009)(4326008)(122000001)(66476007)(66946007)(508600001)(76116006)(64756008)(54906003)(66446008)(66556008)(26005)(6506007)(966005)(8936002)(38070700005)(6486002)(38100700002)(9686003)(186003)(44832011)(6512007)(1076003)(5660300002)(53546011)(71200400001)(7416002)(2906002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KhpUttgt1XWCTHALy8mVFHJYmvkA9t2tCFjG4py6yNX1g1/Hhy7ei89g8t5V?=
 =?us-ascii?Q?9RNUx0UWCa3NCglEveCjwfPGXxlovLlp5rYVboBD1Kr7NaWc6yWC56otM+cG?=
 =?us-ascii?Q?CBe/riR+yseJHvSRLuL/I8JFD3L0DPQJ36YNsqQ9/oiTx2CilsCq3KYEgh94?=
 =?us-ascii?Q?pZGlR0uoUCAzfvzO24w2+4rqUvArW3D7m8fPlCUu/w9thRJo8UmmXr7R5kKq?=
 =?us-ascii?Q?6C5ysDFociNb8kBzWGroorKoaiqf2xxM5MfZjsrblsbxdhYHK1Sr1PNnkh99?=
 =?us-ascii?Q?3IB/UfN2R8d3CPCC3Z6xhGEfl3kSRxMdKaH/bdWg/3eMjXDr/jnraqbI8RT+?=
 =?us-ascii?Q?8mJOjYAyVz6dwN2imOad++CCzF3nZDV6pgTrobRTE4dTSG089JoQu4LCK8VS?=
 =?us-ascii?Q?VM7Es0jfwEzHB0c4XxJK8TsTeCk0+1Z6kxCclylh7ONwppE9ho7PGa3VuYw8?=
 =?us-ascii?Q?HxXA1JmK1nxqhUWBok0gjIc54yYjq44bRdDaQEofvrVQLYnIfs2onlngoAQ7?=
 =?us-ascii?Q?dU+hvq3L7o3nPhPOI8v5p6eEitUqNoP2iNkNhqGldONTrAAUEoOvOEn/9NuX?=
 =?us-ascii?Q?TIuPV402mM49zRguoyXcz5xa7lSdx8JjqLdo++Rn122rQHJGyXrFh51KtC9r?=
 =?us-ascii?Q?IpuscJDGU3GxY7sycCVeLf1g5YXi2us9sY7i+NRyBxjXqwcWVDAU06By1uLE?=
 =?us-ascii?Q?EUDLes8WHU/VkwNYsG9efFsliLc2sJJGnByaDpzK6O/yIJTQdDOrX8AYbJ2x?=
 =?us-ascii?Q?hGOFgxQhKyP27U1cXDA463HsY9JLqczPn7FhiGsHlafv/ge2Lyq/ONDkHe+9?=
 =?us-ascii?Q?t5sSVT1Ymdlx//A/6LFHmSIreONAp9YHkXvkZkA+ppD9HhISnkCV8gR7rDwk?=
 =?us-ascii?Q?K5ECMWqxE4C0le88IH6LvA1OAhfyVEE2hJ5OtvgexfoqPM2ZFC0tNQABzsz5?=
 =?us-ascii?Q?kIPwcwHVlWUh8s6WGBfBA2DK7WgNW0vj6MiornLj67SXqLC1ZB9IT+2WNZmv?=
 =?us-ascii?Q?Ekpidc81aAn7CyJCoxjnZPJvYRXmMloaRkneBbCbjLDLURVgYYhfhsq1lb6E?=
 =?us-ascii?Q?795Ysh0oa+4cjAioXAey0D5ewLuGv+TQzBjdjHkFmEOAzGQGdzA41Lytwogc?=
 =?us-ascii?Q?NJgBVZ7YezlYuXh0iuhwhDDi2Ju8eUNNeeL3W6WsZ+BjS73EL6ioEasWp4qP?=
 =?us-ascii?Q?42Sl4rRPLPbtkvvAUiGfqX6g3hInGzDcDIkJ6pW0mGDb5zNchjWem3QgnS0a?=
 =?us-ascii?Q?iWlMHAtOYi2WBx2uaGLqdMAPIM07h72TZnqVp9/KHG5TPRStqyON5OJHvd5l?=
 =?us-ascii?Q?eS78hUOheTb2PQZHahv6E1c2BHawpuqRC/S+mZ7LsQpom65Q6gP8HhQTBzSx?=
 =?us-ascii?Q?OAkSahofGQOzp4Bj64nKVtUSC+iEcvruKqqiAGy1FAn5dvCT9C7jLXldZlT0?=
 =?us-ascii?Q?TJev6umj+TK4Uep+gOJYqXZoAwjHeun3YTrTMY1F7cxMGQtDilnmqvfjyqEz?=
 =?us-ascii?Q?ZINH1mX28zNzKCYXuUkcNFzXVKyOrsxgZyolKaGVM/V+stIz0FvlBeSKKFdv?=
 =?us-ascii?Q?4d90P0olEzsSgx5IC2L204iDnOa6LKhZ4lh3PCobbAp5QDXCnjjIhHHYXqMo?=
 =?us-ascii?Q?2FkDdOf8ICJsPorKU7JxN1R9hk4cSCcG8jMYCL/U8AUFm8bRtuA5CVzPL0uI?=
 =?us-ascii?Q?HZLOBmj0cQtolSI7eaoEMZwiJxJ0Be5ALPU1s8zZfuOm+DpA1WUkkEvBsryQ?=
 =?us-ascii?Q?GzA7HKNyY8kzUU7h7vJWrapstGCrLCw=3D?=
Content-ID: <1FBBF271EF790D4EA63BD40553277A08@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB5136.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3225fac-f5d6-4be9-b3fc-08da343ff772
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2022 17:50:56.4795 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XbuJTDgMrXuLKY1QEX5L7hZ61k9TLUm0tIhempDTGvYqmzF/y44lWB2y9b5QFdWWm+3uhYjyUEi6cjzWkHswFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR04MB3153
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 2/2] net: vxlan: Add
 extack support to vxlan_fdb_delete
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
Cc: "shshaikh@marvell.com" <shshaikh@marvell.com>,
 "jdenham@redhat.com" <jdenham@redhat.com>,
 "GR-Linux-NIC-Dev@marvell.com" <GR-Linux-NIC-Dev@marvell.com>,
 "manishc@marvell.com" <manishc@marvell.com>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "outreachy@lists.linux.dev" <outreachy@lists.linux.dev>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "razor@blackwall.org" <razor@blackwall.org>,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "sbrivio@redhat.com" <sbrivio@redhat.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, May 12, 2022 at 10:17:13AM -0700, Roopa Prabhu wrote:
> 
> On 5/12/22 09:47, Jakub Kicinski wrote:
> > On Thu, 12 May 2022 09:22:17 -0700 Roopa Prabhu wrote:
> > > On 5/12/22 02:55, Alaa Mohamed wrote:
> > > > This patch adds extack msg support to vxlan_fdb_delete and vxlan_fdb_parse.
> > > > extack is used to propagate meaningful error msgs to the user of vxlan
> > > > fdb netlink api
> > > > 
> > > > Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
> > Also the patches don't apply to net-next, again.
> 
> that's probably because the patches were already applied. Ido just told me
> abt it also
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/commit/?id=5dd6da25255a9d64622c693b99d7668da939a980
> 
> I have requested Alaa send an incremental fix (offline).
> 
> thanks
>

Alaa, when you send the incremental fixup patch requested by Roopa,
could you please also:

- properly align the extack argument of the ocelot_port_fdb_del()
  function
- properly align the extack argument of the vxlan_fdb_delete() function
- properly align the "DST, VNI, ifindex and port are mutually exclusive with NH_ID"
  string to the open parenthesis of the NL_SET_ERR_MSG macro in vxlan_fdb_parse().
- make actual use of the extack in ice_fdb_add() and ice_fdb_del(), and
  remove the __always_unused from ice_fdb_add().

Thank you.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
