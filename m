Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B51A88002C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Mar 2024 16:02:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0FB9660B06;
	Tue, 19 Mar 2024 15:01:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v9MNeLnl1ILF; Tue, 19 Mar 2024 15:01:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 92AC660B10
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710860516;
	bh=H7KDHyCjUHJwET1ycpWvhCv0aKae+D5M292rGfXfLeA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KPjJOgp6G2knHVQxLWNbok3K3hqmS2PSKArJhVhg+zOe+V56cgl2cDYp2o5ORsIkG
	 0VZRRS+8lBjKD0rPoN5FXQNPqLmY+8+w1jQRjEgrFSL7ABrf/iCDA00Uf7VKLUZfGw
	 wd0GQLXkMl2qD9lscgDGig65UUKHKK3Cc3DH1jLZMv9i0f3k+/20/+ltOqPYc5Two7
	 ZMW3dRau698tZBGv5d1iXZ4a+N1/S5AFAfoNXwu0IG2nF251k+LUakFGdKFyTxrXXM
	 ySs7qNUga2OMVtr1TlmQRUDRFTJ5dMV0QXTNTEFLk/xaYhw2mA58DERwiodaiuoftX
	 vjKAhR5OapFbQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92AC660B10;
	Tue, 19 Mar 2024 15:01:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7805D1BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 10:39:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6045981D7D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 10:39:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wPHZET0fRhBx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Mar 2024 10:39:54 +0000 (UTC)
X-Greylist: delayed 766 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 19 Mar 2024 10:39:54 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2B9C781774
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B9C781774
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=67.231.156.173;
 helo=mx0b-0016f401.pphosted.com; envelope-from=sgoutham@marvell.com;
 receiver=<UNKNOWN> 
Received: from mx0b-0016f401.pphosted.com (mx0b-0016f401.pphosted.com
 [67.231.156.173])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2B9C781774
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Mar 2024 10:39:54 +0000 (UTC)
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id
 42J4xfNb007952; Tue, 19 Mar 2024 03:26:58 -0700
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2168.outbound.protection.outlook.com [104.47.57.168])
 by mx0b-0016f401.pphosted.com (PPS) with ESMTPS id 3wxka4v0nw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 19 Mar 2024 03:26:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T9iooEB/m59BCRxbVvPrYugVmK7RC2auWM4W5EOH4Zl15lDJJ2WF72omfywjDM2UoYzkCv3g2nq1f2lnGI2u6ujilTsZBmO6Z6AWS3VdFF1HFi74qU5MFbcL2hgMPDJdDubwH5KJtW3plJ03IkSF6kzQ/wzpHvd+2ghJOPgGSsnD0Yq39Xnaou9DRbmaicqzAouQsGi2MfmCUeyroqbq/Dj0ZIvyqrWK0XtPfgEWwaZcJl+mxmin7RiEb5izaHj2o7eEtEHw77qXvLFjHePvhR1ie4jowu+oyq1hBy13CGspzDBNTfv0dJqnwtUM6bn0spS4go6mFDsIMHKbjVG82w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H7KDHyCjUHJwET1ycpWvhCv0aKae+D5M292rGfXfLeA=;
 b=ds493rfYy2bMxQeP9j4j3ogdVJSHr7hIFRcUxPmNWK8i/gUCymK1DBzZ6T3/WhVQEENN+7kz/9t6Lq1aH0iUtcs2XH+3NrjqopyX/vm8aCc+rVNRN/srWjRsGw6NReRtiL8r4FQhltVWsAM3poVQI9wkPsjJznsEv2lR9ZSOwgR5fRoMACZCw9RYpzz3quxDSDRZwUO2556i5xHdGmrlPcrertnayFpjEhnUA1yCZx/XX8s0HW6TpJfDyPDQgIoyLcCRj+ql584ITIHJaITzfBvtfGJFo4xS19/ZiHkxvJuzSX1F+HBzOVWQ22E+4YPUkYaMboFuJqQ3oXSYFQ1lag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
Received: from BY3PR18MB4737.namprd18.prod.outlook.com (2603:10b6:a03:3c8::7)
 by DM6PR18MB3507.namprd18.prod.outlook.com (2603:10b6:5:2a4::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.26; Tue, 19 Mar
 2024 10:26:53 +0000
Received: from BY3PR18MB4737.namprd18.prod.outlook.com
 ([fe80::4c91:458c:d14d:2fa6]) by BY3PR18MB4737.namprd18.prod.outlook.com
 ([fe80::4c91:458c:d14d:2fa6%6]) with mapi id 15.20.7386.025; Tue, 19 Mar 2024
 10:26:53 +0000
From: Sunil Kovvuri Goutham <sgoutham@marvell.com>
To: Simon Horman <horms@kernel.org>, Erwan Velu <erwanaliasr1@gmail.com>
Thread-Topic: [PATCH v4 iwl-net] i40e: Prevent setting MTU if greater than MFS
Thread-Index: AQHaeef1gzyIIVpicky8bDRYKHLBGg==
Date: Tue, 19 Mar 2024 10:26:52 +0000
Message-ID: <BY3PR18MB4737A4F337BE3417177090B7C62C2@BY3PR18MB4737.namprd18.prod.outlook.com>
References: <20240313090719.33627-2-e.velu@criteo.com>
 <20240318174503.GE1623@kernel.org>
In-Reply-To: <20240318174503.GE1623@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY3PR18MB4737:EE_|DM6PR18MB3507:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VCH9iL0v9cAuWIycdkema71BUME8U8ZyDbx+Lt/wJaN8l4v9kMc9ddUYMiqZFfxFdmYVcGBgZaMuJD439AprR9MRsmCfCrtUCsaNvFfmLSNbRwcY8XnVwhqdmyoV5tcmFFIaMElqwBepyeCbYsZHob9bKSPhTORgXJlyvxVd+8FnX+e2z2gY+xgUNOMduB9YENv8keyj8Dj8jjjsuZ4GOC7UbPBw3H2FD7ZWLOQ2FHBa5iGT5PkFIBCQZFGIDyAW32vYeIpoIFIBAIwpGFd3IbdRzgBnyagAi2PjgtD1iEG59xY16Yx4+FFDwuhPx9l/Hj047FMlymfOUA2qVHZ2yMQ2EEEEf0ZGRc+0BDrdFFpJAKORakEI5yfd99LX6YsXIR9NfLo972xxr1kd2QRVFfGwiKO41zMRpxzSKU4SQnCSrjmnSO4X9XV71u3/+HiVrMXes5J8C4mV5JQcWD+JEg15syPWexaGZxbjf20srsrjcKqhHCqdQPncEA3LOWTNDUvGvd+G1Wo6SWfaIjUd/DRu5BQcPbnPknJANF4qTu36pUDKFSZetYbOeXjZ1ITsZrYiPYmHATHmstXZVw2qqkUQg2d2t2y9xAi+w9m9EbE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY3PR18MB4737.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7416005)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xH0QlOBkPQEwLL54yC9vKKd6iTy5J935t9Tq0oEUY5bH2dZEhHqG2C8HCqXx?=
 =?us-ascii?Q?eeZCSpDBnS8YosRPu3a8c1kMbOs84qVNRA+6KHyPsSFphpXmmrjKd/fA6ie8?=
 =?us-ascii?Q?l/GSa5PPQXbAa9cYyfVB2dnqicDS9FT+vFz2lnLRXMhZMIUNBj4CzFEqNsGq?=
 =?us-ascii?Q?MYJYenfh0e6hg6ZyhyAnSGughgLXt7Fh+01NFwG+RXszKoNWf4KeeWhy00WC?=
 =?us-ascii?Q?dVRnH82V3APNLsHg3vAQhETrlAgzVan+RsUO1p6nfHK3X6KUq+WnuE8iKq7N?=
 =?us-ascii?Q?j0WqF3IZtMztzF2OlPTjh2m+qG+ZU7q2aDp/vjsdCsQ2Ye5ly/TOEgS4Qpko?=
 =?us-ascii?Q?YM+i6hGBYfMlckRjSXep1X2E2oXanntOLbYn59vd/yqGykt39QLRu+MQJIPi?=
 =?us-ascii?Q?RpoHT/W7ABNRjfGvd5yctF3eO9bTw3iFhAo6JQG8kB4+r0ZHb1eUhpszHWpY?=
 =?us-ascii?Q?IzKJBY/wK3IvoS6ov4DgM8aVw7OZtufkWMiyfXIP/VmYPlDnIXxcOZY4csDP?=
 =?us-ascii?Q?xXUttN/wPrFLD7Gtwpv4h/g0w9UgVbpqyC76JVlwL32jIvnYNJqq6Ax4A/d0?=
 =?us-ascii?Q?Mz/LwKiAwbknKTSXoDgdsY9M7oLVfX9WB5I6Wpb7TwiVhMw6RfVq8Gy0BQ2c?=
 =?us-ascii?Q?0NPJFM89raKofvJAM/zkptdtODcPeAlzTs1jN4GgsQTTUxHnOUMQVtQTMOp/?=
 =?us-ascii?Q?O45aamR89nsoQ+dEcYi3yhpSg3uKuLjcdaBPIaXqBTzcCQw0jmpVlo4z0Koe?=
 =?us-ascii?Q?PFZT4drzEBA6Mdnmcav32lRRxmDOQFQriqWVnjAMHqUp9rMeOo6ReFYEgr8Y?=
 =?us-ascii?Q?NHw7lJ1Yuqx+YDLobN91HggmZ3l1/rcb91tLvf/LfV6Rt5lhXtJ6nrc15ANk?=
 =?us-ascii?Q?Jnz8NiZ9Aa480xyFidJuGSEdvHdu6j3XbngolgnDpmTcmheI5H2gaIiAmuwq?=
 =?us-ascii?Q?xrmi7FymIKXqaAi//r5tutiWR9Bgv4e0qxdecD1G0xI7PteLKn5KRXH80OmJ?=
 =?us-ascii?Q?sPY2g3FJQLwG9HO2fBR2eaxX2jMePszACblSxX5nWZPuRdJDIDJG5Rz7hyT/?=
 =?us-ascii?Q?0+LDEQB1561oKPRpqkrGidkdOJU7bPMNCAk+/s00oQ5mRUzTc2s5YZL0v6zi?=
 =?us-ascii?Q?BL4pXI5eNDXQMq4fCXbsFUAXHqTe217zqSg7VTHyL1bJaf3XZp7qXj8GQ/pq?=
 =?us-ascii?Q?zKp8zwP+DPi/n3N62D/8xivqTjEu0KoVpa1mLr93kS0/7QdgDmHdQLxGYFnE?=
 =?us-ascii?Q?5EDOgwf2+66Agc1tj6WoPLQX2OU0GlkweVjJv1ZzPq4dN//n2mWs+hROnw+X?=
 =?us-ascii?Q?+T87afboh9HhjpeB0u8WeHqIaqh/+P2tr3PajxHkLTQokRD5RH8VVNSy3sW3?=
 =?us-ascii?Q?hO+uGQ8GExDYzUA5CX+18fWIMohKajXzfKz959rp1Kt3en1RwSEDT6DI7Pej?=
 =?us-ascii?Q?fSsZhjr9+fkcmLz/XKrruK0KVd1H1+AUN6aXejWACVo2cEkkgais7neUzaJj?=
 =?us-ascii?Q?KqO7FLHYZao7hm54TJdKxMxpk9ZFuPCfc8XF3nEiemEaG9ZVecjDN1ZG9ivQ?=
 =?us-ascii?Q?aPiz8gMTmOgLxfunXXZO6SjhxYfvK91fUt4GneNb?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: marvell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY3PR18MB4737.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 874b98c2-63bc-4594-86ba-08dc47ff1858
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2024 10:26:52.9979 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ieru2tTwZ9ud5yZYWlLEaNqGDbN9/FpYg3xbF4yc3BAMALYcHod1jDPsQKpz09vhS1XmyYa16Ov9E4s/gHWAjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR18MB3507
X-Proofpoint-GUID: 4gxe1L0KIdtHndiIgy8xGNl2HofydWea
X-Proofpoint-ORIG-GUID: 4gxe1L0KIdtHndiIgy8xGNl2HofydWea
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-18_12,2024-03-18_03,2023-05-22_02
X-Mailman-Approved-At: Tue, 19 Mar 2024 15:01:54 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H7KDHyCjUHJwET1ycpWvhCv0aKae+D5M292rGfXfLeA=;
 b=EBNaGjlZ9/BBSbmhIFSyYxWLSkAVanZgx9Xpoj8dDCZQFz6tk4PW+1SW6hir20ZQZ1bl3a1/Pz+rSwHjuAwdCaX4NvufsYXmVUe/M5s2RZPo+23oCEi7ODDpXV/70qSLY1mubM+2cViOBtPyXeXhih3J3w7zxWJdCkCd8VEl86Q=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=marvell.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=marvell.com header.i=@marvell.com header.a=rsa-sha256
 header.s=selector1 header.b=EBNaGjlZ
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-net] i40e: Prevent setting MTU
 if greater than MFS
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
Cc: Erwan Velu <e.velu@criteo.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Simon Horman <horms@kernel.org>
> Sent: Monday, March 18, 2024 11:15 PM
> To: Erwan Velu <erwanaliasr1@gmail.com>
> Cc: Erwan Velu <e.velu@criteo.com>; Jesse Brandeburg
> <jesse.brandeburg@intel.com>; Tony Nguyen
> <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>;
> Eric Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>;
> Paolo Abeni <pabeni@redhat.com>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [EXTERNAL] Re: [PATCH v4 iwl-net] i40e: Prevent setting MTU if
> greater than MFS
>=20
> On Wed, Mar 13, 2024 at 10:07:16AM +0100, Erwan Velu wrote:
> > Commit 6871a7de705 ("[intelxl] Use admin queue to set port MAC
> address
> > and maximum frame size") from iPXE project set the MFS to 0x600 =3D
> 1536.
> > See
> > https://urldefense.proofpoint.com/v2/url?u=3Dhttps-
> 3A__github.com_ipxe_i
> >
> pxe_commit_6871a7de705&d=3DDwIBAg&c=3DnKjWec2b6R0mOyPaz7xtfQ&r=3Dq
> 3VKxXQKibo
> >
> Rw_F01ggTzHuhwawxR1P9_tMCN2FODU4&m=3DJ_D0216agwnkMc8GuVR13
> qCCDBQWZmqULkA
> >
> mTpcwoDk9e1Yw0Z28r7RoYVuLyMex&s=3Ds9O0JKM9qId17Qw5d2dH7c3wLJT
> Bz-frLsKFbz
> > jliE0&e=3D
> >
> > At boot time the i40e driver complains about it with the following
> > message but continues.
> >
> > 	MFS for port 1 has been set below the default: 600
> >
> > If the MTU size is increased, the driver accepts it but large packets
> > will not be processed by the firmware generating tx_errors. The issue
> > is pretty silent for users. i.e doing TCP in such context will
> > generates lots of retransmissions until the proper window size (below
> 1500) will be used.
> >
> > To fix this case, it would have been ideal to increase the MFS, via
> > i40e_aqc_opc_set_mac_config, incoming patch will take care of it.
> >
> > At least, commit prevents setting up an MTU greater than the current
> MFS.
> > It will avoid being in the position of having an MTU set to 9000 on
> > the netdev with a firmware refusing packets larger than 1536.
> >
> > A typical trace looks like:
> > [  377.548696] i40e 0000:5d:00.0 eno5: Error changing mtu to 9000, Max
> is 1500. MFS is too small.
> >
>=20
> Hi Erwan, all,
>=20
> As a fix, I think this patch warrants a fixes tag.
> Perhaps this one is appropriate?
>=20
> Fixes: 41c445ff0f48 ("i40e: main driver core")
>=20
> > Signed-off-by: Erwan Velu <e.velu@criteo.com>
> > ---
> >  drivers/net/ethernet/intel/i40e/i40e_main.c | 10 +++++++++-
> >  1 file changed, 9 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > index f86578857e8a..85ecf2f3de18 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> > @@ -2946,7 +2946,7 @@ static int i40e_change_mtu(struct net_device
> *netdev, int new_mtu)
> >  	struct i40e_netdev_priv *np =3D netdev_priv(netdev);
> >  	struct i40e_vsi *vsi =3D np->vsi;
> >  	struct i40e_pf *pf =3D vsi->back;
> > -	int frame_size;
> > +	int frame_size, mfs, max_mtu;
> >
> >  	frame_size =3D i40e_max_vsi_frame_size(vsi, vsi->xdp_prog);
> >  	if (new_mtu > frame_size - I40E_PACKET_HDR_PAD) {
>=20
> I am fine with this patch, so please take what follows as a suggestion fo=
r
> improvement, possibly as a follow-up. Not as a hard requirement from my
> side.
>=20
> The part of this function between the two hunks of this patch is:
>=20
> 		netdev_err(netdev, "Error changing mtu to %d, Max is
> %d\n",
> 			   new_mtu, frame_size - I40E_PACKET_HDR_PAD);
>=20
> My reading is that with this patch two different limits are checked wrt
> maximum MTU size:
>=20
> 1. A VSI level limit, which relates to RX buffer size 2. A PHY level limi=
t that
> relates to the MFS
>=20
> That seems fine to me. But the log message for 1 (above) does not seem
> particularly informative wrt which limit has been exceeded.
>=20
> > @@ -2955,6 +2955,14 @@ static int i40e_change_mtu(struct net_device
> *netdev, int new_mtu)
> >  		return -EINVAL;
> >  	}
> >
> > +	mfs =3D pf->hw.phy.link_info.max_frame_size;
> > +	max_mtu =3D mfs - I40E_PACKET_HDR_PAD;
> > +	if (new_mtu > max_mtu) {
> > +		netdev_err(netdev, "Error changing mtu to %d, Max is %d.
> MFS is too small.\n",
> > +			   new_mtu, max_mtu);
> > +		return -EINVAL;
> > +	}
> > +

Aren't these driver specific checks and messages deprecated in favor generi=
c one ?
Is it not possible to do below

@@ -1607,6 +1607,7 @@ int i40e_aq_get_link_info(struct i40e_hw *hw,
        hw_link_info->ext_info =3D resp->ext_info;
        hw_link_info->loopback =3D resp->loopback & I40E_AQ_LOOPBACK_MASK;
        hw_link_info->max_frame_size =3D le16_to_cpu(resp->max_frame_size);
+       netdev->max_mtu =3D hw_link_info->max_frame_size - I40E_PACKET_HDR_=
PAD;
        hw_link_info->pacing =3D resp->config & I40E_AQ_CONFIG_PACING_MASK;

So that stack will take care checking max MTU.

Thanks,
Sunil.
