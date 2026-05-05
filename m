Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sGkqAg5y+mkDPAMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 00:41:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B794D46BD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 00:41:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB8F040CBC;
	Tue,  5 May 2026 22:41:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7nD5uNWPwxpr; Tue,  5 May 2026 22:41:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A2EB40CB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778020865;
	bh=1UE3zphDjS6MX0BwQN/HrplP96ubOZ9yPVK8Res8Oow=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uk+qw8L9cBvBCXTkvFdnfTus5MW6XPrYnH+z27fSJzvsdUa1dL/mf/kqf+k4TDY9n
	 E5bLIru0pS4v5sdBmKbVEk/r48F52JddGbo30CDhFiVhgLTcuJx6hW+ClRMMs0iE2a
	 qFvzhFuKDwyCdgIs/FbsYSk7sSnxllepaBLeKaGPtMVta58gpbl3M2Kq/7aexNMFpI
	 jfw+JM5QS6XtpBjNn32F+9lLBuR1mMhHMxbt6bLfcic+5jJR4uVAyabeX0VzqSKW71
	 aDJcOfg0DppSPara4DzkR6mYX4kK8Ywt48kAimL5mLno+pP/WQ750gIl1E2V+++D8K
	 tVhh7sDC6p3Wg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A2EB40CB4;
	Tue,  5 May 2026 22:41:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DB5CA280
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 01:12:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D91794083B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 01:12:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G4ouBIGZ7V8j for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2026 01:12:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=148.163.155.12;
 helo=mx0b-002c1b01.pphosted.com; envelope-from=jon@nutanix.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0D2F840830
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D2F840830
Received: from mx0b-002c1b01.pphosted.com (mx0b-002c1b01.pphosted.com
 [148.163.155.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0D2F840830
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2026 01:12:39 +0000 (UTC)
Received: from pps.filterd (m0127841.ppops.net [127.0.0.1])
 by mx0b-002c1b01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 644NuXMw222830; Mon, 4 May 2026 18:12:32 -0700
Received: from ch4pr04cu002.outbound.protection.outlook.com
 (mail-northcentralusazon11023088.outbound.protection.outlook.com
 [40.107.201.88])
 by mx0b-002c1b01.pphosted.com (PPS) with ESMTPS id 4dy5jj83tb-1
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Mon, 04 May 2026 18:12:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l+j+zswRjASQ1q7+0AZGtu/76YUXfqn/2bEM013FzHyXFFU4363Jq5KmX8kvVW8Efyb54Mm0M1XgWLk/JQXs7RLglP2Qvismi//IONvONX0/e/wQMbNsHGJYA9kZiVQvEliSuO/CDveZR6xn38oifbMyg2XUlNRvHeLYBnpHA7D8Fph1IZIMUDLRrn5vxEwch36nLz1ZcBvgyqi8/hxGDjMpT0i55ltSDjOr7GxuvKA/s+N0toGPehREF/c4kSdtkTpl4uXyiMUHcNlS6WwtPRawIpwO6qmdgJWSWl+spbxZkEWpaHc2rrhxxdlnSgJcybxBeyd1YIzhJHxp/1ir0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1UE3zphDjS6MX0BwQN/HrplP96ubOZ9yPVK8Res8Oow=;
 b=OHJ10Ixd0D+fo/mBRrTz0WevhCkdsySChNvZ+EVVEsEWvCgfJzEv5AXtvkFJwADZfrx5m/2c0IA42RnNzcAvLAUyEXilaW41i6QV57vbm/PfoA0VY24yF5yvf3oIMQAncJeXHbcMgr7R/ULZunvXJDWyx+6E9ZJZbagdiN9Xv/0h1GuMSjh9WDv8dxNqqczyl+WVJZ2qJTL6u9HMuJFDRpk1VDbXJI522kPC5GvVowcy1sLIbEW7GzHnH73bduvRsN7CxIlrNfEsCEiEOJhwfps38qJyaqsBdv7fWHovSicBJmqac+qhGlZBbfzjoAuLNRb0znwFajUl7npyWY+qCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nutanix.com; dmarc=pass action=none header.from=nutanix.com;
 dkim=pass header.d=nutanix.com; arc=none
Received: from LV0PR02MB11133.namprd02.prod.outlook.com
 (2603:10b6:408:333::18) by PH0PR02MB7672.namprd02.prod.outlook.com
 (2603:10b6:510:4c::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Tue, 5 May
 2026 01:12:29 +0000
Received: from LV0PR02MB11133.namprd02.prod.outlook.com
 ([fe80::10e5:8031:1b1b:b2dc]) by LV0PR02MB11133.namprd02.prod.outlook.com
 ([fe80::10e5:8031:1b1b:b2dc%3]) with mapi id 15.20.9870.023; Tue, 5 May 2026
 01:12:29 +0000
From: Jon Kohler <jon@nutanix.com>
To: Jakub Kicinski <kuba@kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo
 Abeni <pabeni@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH net-next] e1000e: ethtool: add get_channels support
Thread-Index: AQHc29Y9rxTi743U1ky+dQQiRDIOo7X+iX2AgAATsQCAAAIUAIAAAYGA
Date: Tue, 5 May 2026 01:12:29 +0000
Message-ID: <D670011F-AA11-4AFF-A70B-4DFF03C5F049@nutanix.com>
References: <20260504154823.2535612-1-jon@nutanix.com>
 <20260504164901.7b3a737b@kernel.org>
 <6F0C5872-0388-47AF-8CD9-1D116EA13224@nutanix.com>
 <20260504180656.62539d96@kernel.org>
In-Reply-To: <20260504180656.62539d96@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3864.500.181)
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV0PR02MB11133:EE_|PH0PR02MB7672:EE_
x-ms-office365-filtering-correlation-id: 1477445c-8143-4605-4d36-08deaa4360e9
x-proofpoint-crosstenant: true
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|1800799024|7416014|376014|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: iP2KL3/87I72gGzSbDFaFMSNzKSBuLmCGQ1FpvDsA3zbs4EL7/L7kRLFaJjeFhTqwF1cA+je1qk0woMFZ/ZBBbnmmDf2mV0aKBoSGlvw3RtAwCeTSmuNPLFkKSlLQga/w+Y66r8s3OdL/uZEfsMqznSweB+Mt0nA1UK7NFv07SDjK247VkWbd2lMFHr8GVNcTdeGlc0AMeduwUfXnFPaxYT4IllsDggtNLXNRlQDDb62s6x+BK615LOYA0cMfE05NvHqPUE4FcCK0sj5indlcpp8zbu6tYx2kxmyqLwY6P3RB+AoZrGa0pfhFo/2nPs50TbLvNTNL46TRwr1x0zQqe8a32TOrx47hAQROuNJrCJIenjnvLSTvCiUQaoMB0IqiGr0j0A4vZX97YMkHBcflU06bXimTELuKFTHjXJrKD6SYOrpup9rse9jIQVZ5bGyrtxJmTKdH/sFlqMJ1g+9G24N3cvtgtOODL6UXVqg4iJ/E3UtiL4U/fgP7d5vAvJEK8BsK3jAMYIthcz+3j0/Xl9Ujkfe3R+JeN00WjxTeZdDEz7YqQfdm8mg2U/4srC2IWB8ystMx1QNJO8Vq+CGCWux07wGCX2Wd/7MInfzNlS5cVC0YP1tIThyn6+HBLIZUy96w/F0rZXx5G6EQPQiiU0SbETEMDvfQiBbnrb5ksYYyRpvYktburXJN7fknSss7BjuoS5lGCy1LekGyMuJeBSMamv5duY/8B9lbAkHQ/PVz6WsLdVVex8hEE0uK19q
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV0PR02MB11133.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(7416014)(376014)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UlIrL3RYU2Job053VWVqeERlalVrZFB6aEhPdThRTmFhR1U2OE1MazdaTkFw?=
 =?utf-8?B?RVU5V1ZaY1oyYzJmeW5zUi9MajZPTGRvNFRwdzh4TTEvc01yR21wVEkwQld2?=
 =?utf-8?B?M2liL0RyOE45a010ZDhsWVA3OEFnM0VGQ0hIMkJ3bjUrOFNpLzdNNTI5c1h3?=
 =?utf-8?B?YjErUDIxRUhwUXJBS1paMVFyRnpsc0FSd3dTQjRYbERTTldtcUhTV3FhTUVG?=
 =?utf-8?B?a1JwLzh0aTg2WXlScUgvOG1IOGJEWWxjOHd0MnN2WUFZbnZ2Y0N4d1RNT0k1?=
 =?utf-8?B?KzlrQklhaGZtRHZVS0xhcThwa0w0VVBaUGR6TmpIN1VjSEFDeTFXN2xldVd1?=
 =?utf-8?B?OWp1a1d1WSthclhLSzVKcS94dFhadjk0REtUY1IyVUZvU0RYZUFRTE1lQWlF?=
 =?utf-8?B?dThWT2duMVRsaTRDZUZjSW5jdHkwTm43OEZNeU9aODFVS3ZraEdjY3RYUzcv?=
 =?utf-8?B?dGd2bnNvV1UybmErRzI4RDdIaEUzYkxUcUFWYTRWbFljOXJ3cVhManlHQlRK?=
 =?utf-8?B?RW03TjFMT25iUW9WZjJJb2VmUHZaUW9UblBKd2kxazF2QzZsa0VrKzltYnNu?=
 =?utf-8?B?TGI1em9VbVRlRVlhdDBOcno0NGdsTVErZ0hMWXo1MU9kRG5qbmVpa2pkQk14?=
 =?utf-8?B?T0dhRWo4TXdEaFAzRXZVV1JXQXQwTGgzNkp3d3hqcWRSMGNXcTdXd1cxMS9q?=
 =?utf-8?B?V3pSSGR0bzhlMDJQbEIzZ3ArVUZMS25vM0NONlVGQXhTdVBqUUZnSmo3WTFE?=
 =?utf-8?B?UU91LzdlbU5iSTdpcWdPNUxzdFZCK3ZERVVMZHlaRUNBQU9rSjJLbUZqZVJK?=
 =?utf-8?B?ZCtZV2VyZjRpbWgxN1oxSEJDeHlKUCt2Y3ZTcjRUSktxcjRTS2Y3WnJwT25H?=
 =?utf-8?B?RTdXb1k0QVNLY0hhaGdub3ZZR01IUXFiMnJiMHRmL2NDV0lKbFEwVWxhdnF4?=
 =?utf-8?B?bE9tYmxWUDRrSWQ2T1hSL0cxYURHWXd6eGpQVWFMenI4K21KNStESXJkVVRP?=
 =?utf-8?B?dXhoOHZDMzBYWjBneXZ1VzliRkUzcGJpVGJWK2FxcUx3T01DeVFNZUJyNGE2?=
 =?utf-8?B?Y3pXUk1rSjZMTTZ6QTJHTUNqRDlvalcxWnVLUkJQV0c1bUxPTVZKblJDWncz?=
 =?utf-8?B?bXhLTThTWFJmSWN4NHhOYXE0L3V6djJPVEZ1SUZyTjFKbytVMlhWWEpWckho?=
 =?utf-8?B?VGFyUSs1ajBsT0dlTmx2a2Z5dEhtY2pSK0FaNCtKY1AvVTQ2ZjdVU3lrcjlw?=
 =?utf-8?B?dkpSSmlKSG84Qm1KSEVGbHZWVjF3SWdXbFVYa3ZaTlAwWk10K2tEcWJ1SzJs?=
 =?utf-8?B?V1FweHk1d2ZOL1QydkUvRFlvL1Q5VmZ0Ni91TFJ0WUw5MkQ1M0gvSXdncHZW?=
 =?utf-8?B?TSs0ZjZhN1hyYkQwQ2JVejRaQlRmSXZ3MHFYZ1g0UFBwV2hFazgvbUN0YmlR?=
 =?utf-8?B?dnRuZG9wem00VHdEZXhxV0pOQ1ZyelM3OG9vRXlHSmxraUdUZjVCVzh3Y1Ex?=
 =?utf-8?B?YUNKelBnRG5VVmxkMmorNkNFVGFCb0hxMmdWVzJKaWpERzBVekFUSWxNMzVR?=
 =?utf-8?B?UVFlaktwYjdVSzIrOVVXQWtxYkl3TkVPWFFuRS80ZXB5ZmFvVkhIZXBaM0Q4?=
 =?utf-8?B?bFEyK1JwMSt0K2RnWUFPc0ZqRWF0elBrNGVQckk3Q3c2U0xaUUNJQWlNSGxr?=
 =?utf-8?B?RUZKSWR4cUVXRkc1VHZuWUR0SktvVUFVc3N0TDhzRjBJL2dsNUo1a3pndVR1?=
 =?utf-8?B?VEsvWjB0TThUdDdRZERoTktnaUFmQ243RE00NW1NZE1QKzdmekR2bllEVGVN?=
 =?utf-8?B?Q2RtOUNpaUFacnpYZ1RWMWV4RmRpbmxrZjROZ3VmRlhGZ0JsN2ZyUkJsNHVC?=
 =?utf-8?B?ekNHKzlLcmhxK3czV29XTkhvUGhScEk1UFBNTDdEQXpNdmVwMXFKdmh6NEta?=
 =?utf-8?B?REtzNFRLYmhuSEVoWHZpbVRwSUdZcHB3RGpNeHRQZXJlaTNTbURCRjE5S1Ir?=
 =?utf-8?B?QjAzZTRHM05XaUxDNUEwdURuNERRNGxUeFdiWmpDN2Y1Rm1OckNBM09XczFI?=
 =?utf-8?B?K2ZlYTdEZitUTGxSSWVrU2FBaURONHBSSkdUTkZmdjZjaitRWWJqMXhra0dn?=
 =?utf-8?B?RVQ5cDhMNFNRTXFlUW8yVktEVG5mNmx5V1Z2LzlhZ2JhZmhiSzlaZUVLa1Br?=
 =?utf-8?B?bVJqZ2Jyc0xybWhwb09nTXpLdkl4SDhzeWlJN2phSFlGVElyWTQ3Qk1VQkFD?=
 =?utf-8?B?WmF2a3RranBwcGxXb0hjZlkzSkxiOSsxVEowK3QzUXhLQ3hGbjZObzhGNVNK?=
 =?utf-8?B?dHRvbU5zOXl5eVhDais4bjA2ZThTYm5RYS9LMnhUbTJTVGtQbVNzQ2NtM2p0?=
 =?utf-8?Q?HhVQjjnbKVD6LdKgcmF3Ii414WFicB05LJtlPjaeoiCuL?=
x-ms-exchange-antispam-messagedata-1: hvd9Nv65oSa0ZrzDgmtbNwommIscWyiKbWI=
Content-Type: text/plain; charset="utf-8"
Content-ID: <14DF689D7BD6FE48949629F37539ACEB@namprd02.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: d2qew9VOnYRUUjYoAWGi33k6tmqKDg0stOPw4iwjee1AZ1kmR0GXSRWLUXH0QtVNgv3M88M5N2zjNqXTSEHVLKTMnzet5Pp1Di2MUj7pIO5HI1PTOy26Dx/gELtmwqZ4dL46ikaqc8HdUWbiXVjPre3XqG7zzWHtdGhX6seCaK9D4/tYkUyxaNoqeGr+nueiuDJz+e9F721qVwcoDh8zuKJnbiCbaFfBBWQU0fSBOIK4iaFnmx32MVtxhHUkkwuoO+dn0qB9cPIscdpYrdWVnVC0PZ+EYd2Gj91oJBUwuwiHIfB6qIKdB1nB+60PQZXMf7Q70NkMRPwhWEPoOF/YIg==
X-OriginatorOrg: nutanix.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV0PR02MB11133.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1477445c-8143-4605-4d36-08deaa4360e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2026 01:12:29.8556 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bb047546-786f-4de1-bd75-24e5b6f79043
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TUmoNJNod8oRBn9JiYH9AhfoA+VWY3AlMfdX8cHhkyFmI+Dq4ZTbH8fAnRPSv/OkpoDP2th3TOlXPNJ59HL3F341Tdln69p/OroYCBvaGTY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR02MB7672
X-Authority-Analysis: v=2.4 cv=NJTlPU6g c=1 sm=1 tr=0 ts=69f943ff cx=c_pps
 a=jWRXmI6mcjnANfzW2AHPyw==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=0kUYKlekyDsA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VofLwUrZ8Iiv6rRUPXIb:22 a=jxMXjlTPpCISP5mWtjnE:22 a=VwQbUJbxAAAA:8
 a=XF8_FwgSVUgRRHf1-NYA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA1MDAwOSBTYWx0ZWRfX62LjYeX1HSF4
 8JXIXyZkTCebeWBR3JEpl//nm/x6/c+WcZLrYdiUgP0TbvAn+WEhWNeNrLqAMBHdu9YWEeHk0vJ
 RJzO+0SAw1dz/NSWn8wwWDd54HZrPE+vPgjQ3SC9XoKgorAtJiOZQAUpY2ihEUwg5EBlK++CMwM
 I/elEcwvA4l7JPxBjxcGJwBTeb4idDhGwAES3OGOCKSqxD85pFUdpS41ZIloQU5aAaFrtS6rQ+F
 i42JmF2awg5Easvj7QzrZI3+p4dzWQcuj+d548XPVY9X1Y4+X1f9zVPzEPMuN3g1QuyOvWhCFSi
 d6eyn+185qQnD+tor3mflAUQE/u62TKqGnPrwZdCH79z9krEUcaPmFP1+XLM1+NHfnYuaQOPVyK
 Y/vSwM0oj5/n+xCkxC29MHkiqoOBap++o8jsS+nmUcJafYOLBqde3YupT3QecyrKmIuHNiWGcX6
 jNugb7Qusisou0Fp0sQ==
X-Proofpoint-GUID: PFfWTt-Sbr1SVpClMyDl0B5rCzQd-Ce0
X-Proofpoint-ORIG-GUID: PFfWTt-Sbr1SVpClMyDl0B5rCzQd-Ce0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-05_01,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Reason: safe
X-Mailman-Approved-At: Tue, 05 May 2026 22:41:01 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nutanix.com; h=
 cc:content-id:content-transfer-encoding:content-type:date:from
 :in-reply-to:message-id:mime-version:references:subject:to; s=
 proofpoint20171006; bh=1UE3zphDjS6MX0BwQN/HrplP96ubOZ9yPVK8Res8O
 ow=; b=ng1l2wHqAE9cFxeAFle8d/MnqqAtbvjdSkJGwpwUbnHCrBGYn9+rDe55+
 Y1yHg4QXeGFPeIDYk7hsVlu/1HnOYVUJCYjYyq+LvLS2H1x0ym0L8plquRrSlMjC
 gHp9ExcoIciLdIK+yHQaRhBQYuJywkrVZsMU+33TuqrwTDRHWcVjWksBr9eZUpzB
 Qv7D3w2ezMte6+o65G51VDcClTJTDPu+RGFkBtd7ojV+tZNkvj9Q41cJpSB0TxNq
 Vj6mhgtYzGkR/xR0hc12g8b3aUiJdURUUeEPawhlditN2sPGA7Ru6wQutQzxbEHi
 h8Xp4FPKnQlYsJYZLmkd+Sx00Dilw==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nutanix.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1UE3zphDjS6MX0BwQN/HrplP96ubOZ9yPVK8Res8Oow=;
 b=ev8GnIU3PyLvn/UWL1JU6E2K97/FyKWg/fVVvnDZgCYQGno9TG9yReUuuxG5opoU/pvAPQt5TDW1/NkCcJ+ETAzf3wcKyvAXDy1zz8xu+bDBT5N6T7dm+WGs9TQ4l/ZONkTcgydph0mP2XlS+wBAWKv/FQTduKKdyqW+6HDObM09Kkp/c4TdyQWfeIqh9u/Sn9DhdMn7rVDmaAOsWY/4OD+qrPUMXllGC97Ixx2KonASk/goH8KQzbhhy2pwrg3qpLB5Yhir0SfKhuJb+ntTeR1eD1Z+rkVdFBsy2gDm/OE8hcKoU9DC27GID+APdpatgKDU6USrnwo+wg+F+EvqTw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nutanix.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=nutanix.com
 header.i=@nutanix.com header.a=rsa-sha256 header.s=proofpoint20171006
 header.b=ng1l2wHq; 
 dkim=pass (2048-bit key,
 unprotected) header.d=nutanix.com header.i=@nutanix.com header.a=rsa-sha256
 header.s=selector1 header.b=ev8GnIU3
Subject: Re: [Intel-wired-lan] [PATCH net-next] e1000e: ethtool: add
 get_channels support
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
X-Rspamd-Queue-Id: 57B794D46BD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[nutanix.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[jon@nutanix.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	APPLE_MAILER(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jon@nutanix.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[11]

DQoNCj4gT24gTWF5IDQsIDIwMjYsIGF0IDk6MDbigK9QTSwgSmFrdWIgS2ljaW5za2kgPGt1YmFA
a2VybmVsLm9yZz4gd3JvdGU6DQo+IA0KPiBPbiBUdWUsIDUgTWF5IDIwMjYgMDA6NTk6NDAgKzAw
MDAgSm9uIEtvaGxlciB3cm90ZToNCj4+PiBPbiBNYXkgNCwgMjAyNiwgYXQgNzo0OeKAr1BNLCBK
YWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPiB3cm90ZToNCj4+Pj4gZTEwMDBlIGhhcmR3
YXJlIHN1cHBvcnRzIGEgc2luZ2xlIFJYL1RYIHF1ZXVlIHBhaXIsIGFkZCBiYXNpYyBzdXBwb3J0
DQo+Pj4+IGZvciBldGh0b29sIC1sIChpLmUuIGdldF9jaGFubmVscyksIHNvIHRoYXQgY2FsbGVy
cyBpbmRlZWQgc2VlIGEgc2luZ2xlDQo+Pj4+IHF1ZXVlLiAgDQo+Pj4gDQo+Pj4gV2h5PyBJc24n
dCBFT1BOT1RTVVAgZnJvbSBldGh0b29sIC1sIGltcGxpY2l0bHkgc2F5aW5nIHRoYXQgdGhlcmUn
cw0KPj4+IG9ubHkgb25lIHF1ZXVlPyAgDQo+PiANCj4+IFBlcmhhcHMsIGJ1dCBJ4oCZbSBub3Qg
c3VyZSB0aGF0IGlzIGEgZ3VhcmFudGVlLiBBIGdvb2QgcmVsZXZhbnQgZXhhbXBsZQ0KPj4gaXMg
d2hlbiBJIGFkZGVkIGdldF9jaGFubmVscyBzdXBwb3J0IHRvIGVuaWMsIHdoaWNoIHN1cHBvcnRz
IGFsbCBzb3J0cw0KPj4gb2YgY2hhbm5lbHMsIHNvIEkgZG9u4oCZdCB0aGluayBFT1BOT1RTVVAg
Y2FuIGJlIDEwMCUgY29uc2lkZXIgcmVsaWFibGUNCj4+IGluIHRoYXQgY2FzZS4gTWVhbmluZywg
aWYgaXQganVzdCBzbyBoYXBwZW5zIHRoYXQgdGhlIG9yaWdpbmFsIGF1dGhvcihzKQ0KPj4gZGlk
bid0IHB1dCBpbiBnZXRfY2hhbm5lbHMsIHRoYXQgZG9lc27igJl0IG5lY2Vzc2FyaWx5IG1lYW4g
dGhlcmUgaXMgb25seQ0KPj4gb25lIHF1ZXVlLg0KPj4gDQo+PiBBbmQgaW4gdGhpcyBjYXNlLCB0
aGVyZSBpcyBhbiAib3RoZXIiIHF1ZXVlIGFzIGFzIHdlbGwgdG9vLCBhcyBmYXIgYXMNCj4+IEkg
Y2FuIHRlbGwsIHNvIHRoZSBvdXRwdXQgaXMgYXQgbGVhc3Qgc2VtaS1pbnRlcmVzdGluZy4NCj4g
DQo+IFNvcnJ5IEkgd2Fzbid0IGNsZWFyIGVub3VnaCAtIGlmIHlvdSBoYXZlIGFuIGFjdHVhbCwg
cmVhbCBsaWZlIHVzZSBjYXNlDQo+IHdoeSB5b3UgbmVlZCBxdWV1ZSBjb3VudCBvZiAxIHRvIGJl
IGV4cGxpY2l0bHkgcmVwb3J0ZWQgLSBwbGVhc2UgZXhwbGFpbg0KPiBpdCBhbmQgcHV0IGl0IGlu
IHRoZSBjb21taXQgbWVzc2FnZS4NCj4gDQo+IElmIHlvdSBkb24ndCAtIHBsZWFzZSBkb24ndCBz
ZW5kIHBhdGNoZXMgZm9yIHRoZSBzYWtlIG9mIGl0Lg0KDQpBaCwgb2ssIHNvcnJ5IEkgbWlzcmVh
ZCB5b3VyIG1lc3NhZ2UsIHRoaXMgaXNu4oCZdCBhIHBhdGNoIGZvciB0aGUgc2FrZSBvZg0KYSBw
YXRjaC4gTG9uZyBzdG9yeSBzaG9ydCwgd2XigJl2ZSBnb3QgYSB1c2VyIHNwYWNlIHBhcnQgb2Yg
b3VyIGNvbnRyb2wgcGxhbmUNCnRoYXQgcmVhZHMgaW4gdGhlIG91dHB1dCBvZiBldGh0b29sIC1s
IGFzIHBhcnQgb2Ygc29tZSBicm9hZGVyIHF1ZXVlDQptYW5hZ2VtZW50IGNvZGUuIE9uIHN5c3Rl
bXMgd2l0aCBhbiBlMTAwMGUgZGV2aWNlIHByZXNlbnQsIHRoaXMgc3BlY2lmaWMNCmNvbXBvbmVu
dCBnb2VzIGludG8gYSBjcmFzaCBsb29wIGFzIGl0IGV4cGVjdHMgYWxsIE5JQyhzKSB0byBhdCBs
ZWFzdA0KZ2l2ZSBpdCBzb21lIHNvcnQgb2Ygb3V0cHV0Lg0KDQpUaGF0IGNyYXNoIGxvb3AgaXMg
ZWFzeSBlbm91Z2ggdG8gZml4IHRvIGlnbm9yZSB1bnN1cHBvcnRlZCBvdXRwdXRzOw0KaG93ZXZl
ciwgbXkgdGhvdWdodCBoZXJlIGlzIGEgc2ltcGx5IGRlZmVuc2UgaW4gZGVwdGggZml4dXAsIGVz
cGVjaWFsbHkNCnNpbmNlIHRoZSBrZXJuZWwgcGF0Y2ggaXMgcXVpdGUgdHJpdmlhbC4=
