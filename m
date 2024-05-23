Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2098CD888
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 May 2024 18:38:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6998A400BA;
	Thu, 23 May 2024 16:38:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KoXJcHi2V6r5; Thu, 23 May 2024 16:38:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3D75400F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716482308;
	bh=cOAFUPRsVhmkFCM4FNiugMIcNEWFDr79dlduJLUvZvg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3tzQVbv4vGVZnYu3Jl00x/MdJWeOrtXgw4wwva9rss1xq4cMd5iSVjWXruS/vtiFe
	 /ZEoSCP2uSK5wuS1iVXCkWGGkxRTp7a17QTO6aZHMMVVkvigYonxWVZmhpkZY9lwwC
	 vV2OlhsCXr53NIE9nK/v/oJqTAnKWkI6Qfd/Yyme84WUJ4IpzrcQbJAczqJZ273I7W
	 /VgAGHTff/dj0Ve8qyv9ZszR+4Qzg9SLaYI9l2RzRA2EZrJuRA6caBDzX0zTIvTYRE
	 TkErniDhBIDMCsZ3wJ3BtItBWnLvMvtMPcvpPwXZXWQRwdCjkkgwyQOlsBufOjIuIX
	 Uw1BP1eUEkpgg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3D75400F5;
	Thu, 23 May 2024 16:38:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 808D51C635F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2024 06:59:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 77D3D4035C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2024 06:59:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3cPkPM0eTf5g for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 May 2024 06:59:37 +0000 (UTC)
X-Greylist: delayed 1556 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 23 May 2024 06:59:36 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F17C540359
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F17C540359
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=67.231.156.173;
 helo=mx0b-0016f401.pphosted.com; envelope-from=sgoutham@marvell.com;
 receiver=<UNKNOWN> 
Received: from mx0b-0016f401.pphosted.com (mx0b-0016f401.pphosted.com
 [67.231.156.173])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F17C540359
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 May 2024 06:59:36 +0000 (UTC)
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 44N4lNt4003907;
 Wed, 22 May 2024 23:33:27 -0700
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2101.outbound.protection.outlook.com [104.47.70.101])
 by mx0b-0016f401.pphosted.com (PPS) with ESMTPS id 3y9y3108hx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 May 2024 23:33:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hp0hYoga63/9UDBtN0AkqTKeqnrqiEIGec8/rXUNZxGNxwIpwjRmZheI8JzpkXRa8BJ9hGiud0RwO0RU8nJjjYWy61QBICMW1aKlvupaQGSYLOWtEPw9v1xG1JTA6lPExmhVM98u00DaojXiNDHJ3BvY2G1dYvtoc3iZAs9W1NrZE/QFsQgmQR7sMXtNoT1EIgcEfpunlw8C0LoVBCWRkeolZzksTyPIxhjcmRohjrUOD1vwc81TfcmX5BrLennPkC6RiGlJZ4i6b5DQfNtwcnPyIDtXauiav/u3UAPWykDJz74+y1WQbRw5FGHkB3Wxd2bPyPSd3dfXnmC4gBVmfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cOAFUPRsVhmkFCM4FNiugMIcNEWFDr79dlduJLUvZvg=;
 b=NPvAWB/eAbBdkHZtR+u5bAInN90MOGSJ/hzwBZxg0510+BLwCqa6CxxC2NuvWw+SzkYEAfNNxPWaaV2YBfptqZp3cNNcKoT8iSDqW5HH2Ih9lP/B8CkxiwWRyi5/iV8fshOvRFO0yLkrOfB97cVJkOsp4oCBrJxD3K6AR6g/MOaHNIjbE0dBEGG4qcAm0510APm7hck4a5V9O0AisLfYUJePT2dq+L4JowAZW+kYtbbP9ynupvhPPCmVyMZyp7noS6b52NhYxloc/Kvuy6+g7yNTUU+3Y7MP4WK0c11xcNWcWSM68Gek9jLEKlDcYnOZHY68wg2M9Qomw+G+1tpQYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
Received: from BY3PR18MB4737.namprd18.prod.outlook.com (2603:10b6:a03:3c8::7)
 by PH0PR18MB3832.namprd18.prod.outlook.com (2603:10b6:510:1::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.20; Thu, 23 May
 2024 06:33:23 +0000
Received: from BY3PR18MB4737.namprd18.prod.outlook.com
 ([fe80::1598:abb8:3973:da4e]) by BY3PR18MB4737.namprd18.prod.outlook.com
 ([fe80::1598:abb8:3973:da4e%5]) with mapi id 15.20.7611.016; Thu, 23 May 2024
 06:33:22 +0000
From: Sunil Kovvuri Goutham <sgoutham@marvell.com>
To: Michal Schmidt <mschmidt@redhat.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [EXTERNAL] [PATCH iwl-next] ice: use irq_update_affinity_hint()
Thread-Index: AQHarJ2uEw8omJE7tkGvWZXHeGQh2LGkXMiQ
Date: Thu, 23 May 2024 06:33:22 +0000
Message-ID: <BY3PR18MB47378EFC12764460340A3779C6F42@BY3PR18MB4737.namprd18.prod.outlook.com>
References: <20240522231256.587985-1-mschmidt@redhat.com>
In-Reply-To: <20240522231256.587985-1-mschmidt@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY3PR18MB4737:EE_|PH0PR18MB3832:EE_
x-ms-office365-filtering-correlation-id: 968101cf-7f59-4548-70a9-08dc7af23e2d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?8fBt4AUAYKs6JeMNE6B46c48EQdhxbg+RtgNsLAjo3OY/3CQp7f0uj+N/oyd?=
 =?us-ascii?Q?16hBqqOWvWFrQf78eaBQ/14u0HQN5PDLR689EKydpzRU5gWF7S9heqE9eokI?=
 =?us-ascii?Q?5+1tlgf99MitpQri6gQgwnZsMYkGCTIFGff+WWlxfs6/wifsU8LSTQqj6lW4?=
 =?us-ascii?Q?ZuJxPDLEJTJEtcdQGebfu+70wfhkm5R2u+rEUIZE4qFQ2jLfR9H22qDvrLrm?=
 =?us-ascii?Q?iP7OunnZm6F8H0UMkxDmBn7269tpjSkk8ZABQucg2YveVnOM8rRXxT3MyyNz?=
 =?us-ascii?Q?w623Uj2LKaDQ/drk61hO0sgejW8e5kLY4ww/TpTBkaBe4HnKcxve59gQ6AnC?=
 =?us-ascii?Q?ghYJ4U+lPkZC/4EsQ0M8RrRSlQOZzCS/AUlsaSQXF4QkaKhKqckCo202Nw5Q?=
 =?us-ascii?Q?MYlVPS3RzMYLHeNeYut130WVy2AEgxxGk1kGKPbtqaROGPKWNpNDCPKzV1hD?=
 =?us-ascii?Q?e1NBPUFlP9mlwOWvJIcsDIeD0Ky8eP9jryY3uDCxUcbWTZy+dyJF5aLfOnC4?=
 =?us-ascii?Q?nR3GcFOSguHv4T6oWOOzcJ205xq3eKHp8q/49SsXXefFczlgiCSfo4QpaKMp?=
 =?us-ascii?Q?BJkmKkg42gfWMWAMOCm3IXrZ1zHCnFF1BsoRN5NRsfCcnl/xajWxynHMK/xI?=
 =?us-ascii?Q?3IWP7eAS6usMMkI6iauBbLRas7eSQfYR+bOsCP+cR7tOBBAHpojWoarg0e6q?=
 =?us-ascii?Q?gqDcCKqKnMy01uqDRkYBgLrX5GupYmXOAN6+T7vhid+kdkpNU0yM1uk/f/ay?=
 =?us-ascii?Q?2cT0NzxdjzsuJVTayxpj7nx750mQ391YTwUlVsDoN80CuAqqMEyQJK+zaJOW?=
 =?us-ascii?Q?FzSMNqk1Ip3FBFI2xJFFnmFdq54lFYAKLQzl3VBSshHoQI0vRvkUUKlxLMmL?=
 =?us-ascii?Q?ojbBow2pfnXMqUIa/WEGERacKaRbjngZ3bLhFPgwxHdpZqxBvC9O5dq9C8Cl?=
 =?us-ascii?Q?BnnhIOgRBi0YdyV4Lzi5AlkqDOW2h1UYRafTRuSokqBJaY3wX8RPwbrdjD+R?=
 =?us-ascii?Q?889N26k/CrTfsFp4yUhuSHDikMAmElb2OaIbZWsd29+Ukwxi5sITbnXi4H/g?=
 =?us-ascii?Q?1Wr7QEsHiXFw9c0UULsbkoA3ImrQYDkdpFV5jcmyG9pHmmLOb8v3RLfOdKaf?=
 =?us-ascii?Q?S2i8wLGE2t6jd0D0nShF+WnpPrdD/nMkV4IMDuqkSAmpOu5LKH0AlJSJVR83?=
 =?us-ascii?Q?Af2zYik9fdjp7VV5F1gm45eymbAtoUCW+kAdvLrJ5ea6gfyzClVksmskN+MQ?=
 =?us-ascii?Q?XpFC6i0s4gr3yE7GRBRpkLDpu5OzmCZI/wKDBJmyig=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY3PR18MB4737.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tf60IS+NUbvHJwAjA35ziVCv/8BRLkJbT61FdiXvOqGbZGt/d0vyjXOBGTnA?=
 =?us-ascii?Q?7u0N/6m8PY8sen0gF9RbQDQfrz0P36KW3nT4OleuW5CQjSNwvwV1XJjwEfvx?=
 =?us-ascii?Q?Fw0UFjjQ1JzoqLNuH6nBc7pXfjvliXFT2iBoif3Hrd3RC/6Ielpr7h9JvVRI?=
 =?us-ascii?Q?dVkKFi1RkeXuG73e8tmdMAtu6NTcRG72+wGaxZhJPhMeoSbmO9nES2ZEsOLx?=
 =?us-ascii?Q?0NMl6cfb73hUPwwmhb5qTZUHwFqjbwCURYvt81kUNeYOINB7GsVlk86lSF2w?=
 =?us-ascii?Q?hwtFYVEWruylVhT4kR+xKmPBZ4eh53w28D4jKIml7dc6yHGWPgvVzYxV/Vvv?=
 =?us-ascii?Q?rC5jdkdRxrfCCN4duFgdito+fum6UY/hWKi2XSpkgnXXt63jb//nXg8iaU3M?=
 =?us-ascii?Q?mNI8F0nxRWBh1BDWknNZhUX7PohZUsGo/4zAre0gxwUDlobOSqPVXHRqXw3n?=
 =?us-ascii?Q?NymbYv9LtOtF8RS57Yv6erDAXA5UCtPdP9G+n9qbqBSIi2vqzAB99Qt3uodU?=
 =?us-ascii?Q?o00ho+GaN2JWzs5fNoItWFQDwLlXN2IIChSIPsPlZqfgNhM+Pa5FvY5112ko?=
 =?us-ascii?Q?IIOTuMfbbKyCBIJjBOan/Fs9MiApX11RCfLdj5SJ/kq7qULTTfPztKg6R2Fg?=
 =?us-ascii?Q?7sNI4ujkH5UhXPoRXOGwWXLjed4MJnCbJg1WM0HzMxX1ZpgooCQytlj1ISGa?=
 =?us-ascii?Q?b0CW23PRBWytFK7tzXaADpmAZgX/ITelyx1L2J6c5V9j2a0EM+OKVnxpAoZK?=
 =?us-ascii?Q?HOjU57DxOFXivCtA7h3e9zihB/04PbJLU5gF1B+xUBSr3xaJlJjp8kxvtjwT?=
 =?us-ascii?Q?uorVobsjeW0lhqAJGtu/oE3T+7QtQSej7q7Z2rxePxvG1bZYTXKHI8AceMRz?=
 =?us-ascii?Q?2uazvPXrzADMSyBf/+NRIDERadBC3z+9lYcJQNWH1tqQDyl8JlJ1FSStzPnx?=
 =?us-ascii?Q?6sYQX96qSd56oSW3MJcNOOdFzSJVqXTEiLl6BXtbnduI71FXow0eFJ4WqIJQ?=
 =?us-ascii?Q?PYepkQBT6JoLGstgkuHUf0XYADAwO2n4HZ3/s2V8haZAVLz5fo4+R0fOK1Qs?=
 =?us-ascii?Q?rr3hDRocyOkcZfiUeVv8am3aU0gu147C6hHtYAvaYRB1uDCoLwnLDSqtZ0SY?=
 =?us-ascii?Q?JYHshorYnHQFdNUHqry106cp2l8R0Z/BBdwBFuAxpi5Arxr3f+c5H1Omg+LX?=
 =?us-ascii?Q?sKCWPpg7WnspTNb2fWZKC4QHPhI79lJnHQ4WNN0RYZVzX4Nv+tJ8u9qIhfBJ?=
 =?us-ascii?Q?hqhewxD/rzzbXikcmepDGpMT+3l3UGy51kMyHkdk7B0pz7PClQFQLZIR7j9i?=
 =?us-ascii?Q?GAwHxtd6yrWaR9M43dPMU0Ynbc4ykXSo28OEwNUAS627HV6yEAP8zRAqkWjL?=
 =?us-ascii?Q?smbNfKMGf/CcrZQd4SZXYWsS/Io1hB26NYlN+YawkZlF7yKU61JNIjavKNfX?=
 =?us-ascii?Q?vNynLCRA7WlpV5vS7azreOyCSWMsP7HBAEYjUJKiR0AksxGKVPUo1xkCC/p6?=
 =?us-ascii?Q?n21Vh9PaFjRRqjgrBb8DwdBkTzVN0cnzuKkeJiOfYRFyW3I4oti1XREVLq7E?=
 =?us-ascii?Q?fYyP9iZtzJPZrmHFBpsudg2zFgivk0wJQrgeCCJ0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: marvell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY3PR18MB4737.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 968101cf-7f59-4548-70a9-08dc7af23e2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2024 06:33:22.3231 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DyMLLUMDm671PrsyEzMqnafn+hyBfqw3UsXgVwXDO2y/SaijKrxmWoqJR9VzMFBsVWlewTl7vEZTk+W3XlcZEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR18MB3832
X-Proofpoint-GUID: 1Jo2FuW789_LO2_ko1COLRhZBaxAxEtL
X-Proofpoint-ORIG-GUID: 1Jo2FuW789_LO2_ko1COLRhZBaxAxEtL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.12.28.16
 definitions=2024-05-23_03,2024-05-22_01,2024-05-17_01
X-Mailman-Approved-At: Thu, 23 May 2024 16:38:26 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cOAFUPRsVhmkFCM4FNiugMIcNEWFDr79dlduJLUvZvg=;
 b=DpRmcXk4QL7ij13yzJXL5agKkc+CcNz53YkeBZmQQOeiI4dg6A2JXqrxHMj8VBO/bqEleXsdUw4KPbZwNR8bWt004QvbrmMKykfq/L2nX6FMiK3esvnFhHRmpJI99yJSsqGpo5U0FSpTtXrJVQg/h2mB8gWCgJoS6ZyA1M/2Xys=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=marvell.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=marvell.com header.i=@marvell.com header.a=rsa-sha256
 header.s=selector1 header.b=DpRmcXk4
Subject: Re: [Intel-wired-lan] [EXTERNAL] [PATCH iwl-next] ice: use
 irq_update_affinity_hint()
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
 Thomas Gleixner <tglx@linutronix.de>, Nitesh Narayan Lal <nitesh@redhat.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Michal Schmidt <mschmidt@redhat.com>
> Sent: Thursday, May 23, 2024 4:43 AM
> To: Jesse Brandeburg <jesse.brandeburg@intel.com>; Tony Nguyen
> <anthony.l.nguyen@intel.com>; intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nitesh Narayan Lal <nitesh@redhat.com>;
> Thomas Gleixner <tglx@linutronix.de>
> Subject: [EXTERNAL] [PATCH iwl-next] ice: use irq_update_affinity_hint()
>=20
> Prioritize security for external emails: Confirm sender and content safet=
y
> before clicking links or opening attachments
>=20
> ----------------------------------------------------------------------
> irq_set_affinity_hint() is deprecated. Use irq_update_affinity_hint() ins=
tead.
> This removes the side-effect of actually applying the affinity.
>=20
> The driver does not really need to worry about spreading its IRQs across =
CPUs.
> The core code already takes care of that.
> On the contrary, when the driver applies affinities by itself, it breaks =
the users'
> expectations:
>  1. The user configures irqbalance with IRQBALANCE_BANNED_CPULIST in
>     order to prevent IRQs from being moved to certain CPUs that run a
>     real-time workload.
>  2. ice reconfigures VSIs at runtime due to a MIB change
>     (ice_dcb_process_lldp_set_mib_change). Reopening a VSI resets the
>     affinity in ice_vsi_req_irq_msix().
>  3. ice has no idea about irqbalance's config, so it may move an IRQ to
>     a banned CPU. The real-time workload suffers unacceptable latency.
>=20
> I am not sure if updating the affinity hints is at all useful, because ir=
qbalance
> ignores them since 2016 ([1]), but at least it's harmless.
>=20
> This ice change is similar to i40e commit d34c54d1739c ("i40e: Use
> irq_update_affinity_hint()").
>=20
> [1] https://urldefense.proofpoint.com/v2/url?u=3Dhttps-
> 3A__github.com_Irqbalance_irqbalance_commit_dcc411e7bfdd&d=3DDwIDAg&
> c=3DnKjWec2b6R0mOyPaz7xtfQ&r=3Dq3VKxXQKiboRw_F01ggTzHuhwawxR1P9_t
> MCN2FODU4&m=3D8_ejYsgRhUX90iDcRMQE2cUmtBDDCjGE8LVB-
> vhUlW0MMr-ZoqFeyCnI5qTQrKxf&s=3Dr5rBcGd0wa-
> lQkDZdyzZwBeBviSd8DZpgYh028enkU8&e=3D
>=20
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c  | 4 ++--
> drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c
> b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 5371e91f6bbb..0f8b622db2b5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -2587,8 +2587,8 @@ void ice_vsi_free_irq(struct ice_vsi *vsi)
>  		if (!IS_ENABLED(CONFIG_RFS_ACCEL))
>  			irq_set_affinity_notifier(irq_num, NULL);
>=20
> -		/* clear the affinity_mask in the IRQ descriptor */
> -		irq_set_affinity_hint(irq_num, NULL);
> +		/* clear the affinity_hint in the IRQ descriptor */
> +		irq_update_affinity_hint(irq_num, NULL);
>  		synchronize_irq(irq_num);
>  		devm_free_irq(ice_pf_to_dev(pf), irq_num, vsi-
> >q_vectors[i]);
>  	}
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index f60c022f7960..a5d369b8fed5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -2607,7 +2607,7 @@ static int ice_vsi_req_irq_msix(struct ice_vsi *vsi=
,
> char *basename)
>  		}
>=20
>  		/* assign the mask for this irq */
> -		irq_set_affinity_hint(irq_num, &q_vector->affinity_mask);
> +		irq_update_affinity_hint(irq_num, &q_vector->affinity_mask);
>  	}
>=20
>  	err =3D ice_set_cpu_rx_rmap(vsi);
> @@ -2625,7 +2625,7 @@ static int ice_vsi_req_irq_msix(struct ice_vsi *vsi=
,
> char *basename)
>  		irq_num =3D vsi->q_vectors[vector]->irq.virq;
>  		if (!IS_ENABLED(CONFIG_RFS_ACCEL))
>  			irq_set_affinity_notifier(irq_num, NULL);
> -		irq_set_affinity_hint(irq_num, NULL);
> +		irq_update_affinity_hint(irq_num, NULL);
>  		devm_free_irq(dev, irq_num, &vsi->q_vectors[vector]);
>  	}
>  	return err;
> --
> 2.44.0
>=20

LGTM
Reviewed-by: Sunil Goutham <sgoutham@marvell.com>

