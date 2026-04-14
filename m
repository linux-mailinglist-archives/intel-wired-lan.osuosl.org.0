Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IBtwDvkn3mmSoQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 13:41:45 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5833F97C7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 13:41:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34650429FB;
	Tue, 14 Apr 2026 11:41:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8y5Ta9ULtVIk; Tue, 14 Apr 2026 11:41:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9ECD642A17
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776166902;
	bh=tXTSPtS2pmZPfP3wciN7DI3lYyXIkC+Tfw5pLf2na+c=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=1awlkVKcZ4SzUGutNfvQHJ2aATAUgwH3Y0CQqCIWk5k+/A7gZpPs7rJVTt5bo+LJN
	 KFEE9V/vhdhNdVE2PSeugTcwysuq2cSS3m6OwgRvx/1DpN/vlEx9DMhpJanbZHQ19f
	 +ukzWRNPviZtHZX14rdDd8xhJL99zYRVR0RJze76SFdChmJ6rG0JBAmOnPuVWLWFqY
	 nUXIY6I92ApXM+lxLrOIIuPrdqVbH7wF06MYoqF1yh50fu6R+Wr4Wj4OOf5HvySRUf
	 91/oCTqZjDHtc4Eq8OJA6gfcTFsOaddDh9GyQjmaH/qDsjUI7VMtOEYLE4hJK757Xo
	 9XAIwbrupP/Yw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9ECD642A17;
	Tue, 14 Apr 2026 11:41:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6FCA9283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 11:41:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5546461CCC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 11:41:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cc9xzYfbZKeR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 11:41:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BE81E60814
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE81E60814
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BE81E60814
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 11:41:39 +0000 (UTC)
X-CSE-ConnectionGUID: fmrsEoaxQnej7Qg2HL2CNw==
X-CSE-MsgGUID: iSN/8nUYR7uTTGb87yK6dw==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="76828039"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="76828039"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 04:41:39 -0700
X-CSE-ConnectionGUID: 1lX8jt8+Rf+L2ZYOSksNqA==
X-CSE-MsgGUID: fsQnqcm0SWSGLlwCtX1D9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="225769234"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 04:41:39 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 04:41:38 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 04:41:38 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.24) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 04:41:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kJsoZY5KpDvcRe5Cvxym1W0Q9UWUR3DasPM4piokE1CjGXXZYOybJGA//k56+VjBP+F70BjD/PEg4SRWcdkR0XEI0N1BixhELItMcfh/GZzY5AQ5xboKDrAMAKSKU7icU+y+EyA17g6DfGub8gj3lbwKVj+vBV35U4t81w2gB4pNN+jUxszFpV3m9yn9SR9JuaVfAbwktXrGhvN73itJN7sajlqGwcR2lrsJGVNza2RsHS6/02GN/RIwtwrYNLc7uGxr7pBKGsAzaOlr5JgfHgWjJWEAMovTFAARyg/hoB60sXMlZh+ZWIcVoodcczSToKWFpoqjE/kowNnMX8cEVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tXTSPtS2pmZPfP3wciN7DI3lYyXIkC+Tfw5pLf2na+c=;
 b=KeJaX2u1fqJlLTaeSvL8VgzqBCYyLaCkbblpzT6R7rxWji/tr4kXOLQAZwm+qd8gqNptoSAQhu8rP3MBaMEfKGDXu4hFLKTYQJ3lFMIIxRuC65WZleOm5jj7dWJGjhPzAIkGvaTggj/LODodSUOCmGYyU3Fqdw2GWHO607BMhOqq6+/TRok1TttWO4Iyu3JU9y06ev5EbC/Ts5Vzkq88N5upYJJMcgBpwyp4AVTICRMqRo5ZQlzp5hrhs51Rno/XCzH2VHBsOrVa3DqeqzUYl8JB304+cQCPoqI/6xvOpeJ92/yHnwNI2eETKG0m1Xw0zqxOFu1v5t+LOeRcD2S4iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB9874.namprd11.prod.outlook.com (2603:10b6:806:4d7::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Tue, 14 Apr
 2026 11:41:36 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Tue, 14 Apr 2026
 11:41:36 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>, 
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v2 4/4] ice: skip unnecessary VF
 reset when setting trust
Thread-Index: AQHcxq8P0glZcdfPaEKTPrkGxvqzvLXeecbQ
Date: Tue, 14 Apr 2026 11:41:36 +0000
Message-ID: <IA3PR11MB89869517D064D3077DF2E7A2E5252@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260407165206.1121317-1-jtornosm@redhat.com>
 <20260407165206.1121317-5-jtornosm@redhat.com>
In-Reply-To: <20260407165206.1121317-5-jtornosm@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB9874:EE_
x-ms-office365-filtering-correlation-id: f022de37-1474-442d-093c-08de9a1ac8ea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|56012099003|22082099003|38070700021;
x-microsoft-antispam-message-info: DPt3GqTregKZvZbzxf4mkt2Nmj8kSC7GfyZK2vD7iAap0u+7CvbgP3fd/gyuNPTh/q2HvtU1ajpBLk5Qyl4IYKLjI4i2k1Qcj5kjALRyjCf5YxTzrwOGuOOekWaR2VMlR70HmVWAEuSdZ8zbiz2/msnvdYhZzpsCmhAtkLeSxpvlTdZ1RMffN9hSsALPpPwtKVTSu3Oze9wERkTsjnEH2yiCzP/WY1hqbM7vKNW++lLPe2UKUj8QiUWXtBJHtR429elBMi1JxkkzZEiHYO/QZEQfUItAqi57BukTxXO5Lg8dSY1t3aBmzM/0szklbYn1l+3u3UBzNKMb0L3TMQqBGrD58Hl0g5dNWNlvCGKw3VVi2um+LfzUpAC+ex6nzif24sK/NxVe8s3XPaq+Up9wk6aATSBz2jgZe9/QXGbDVKPv/Nx9C2pZCOwgNHGbrgCe/PBG6LjlJqCVd3zw3ZjpLzd43iPNKhgQ5szD6r9wNbpUhl4VX03uG5v01kkA11/N3uhf2+2Bp2kVaqmfPAbTnLJ5ejhpHQUXQoA1G3zbahlqdgxpP22uwWrl7ns0xmW9lTyS+0RanjWXwFw6WOwCtFugrMXCF/ImJ2Tk2x9+wwa/KItGgaXDbx+gp9qJwdzKEV84KZ3RES0r2nBYMQRX0nIKlJyG50F6RTa+tm/gjgX1fWD3ksLWE7LXBY0I1kSAWjkuY5QveGPRD91pKC0hzGbrRiUCfrJmCAG7PjqBNJwpFxmZ2pgc2ekz3UnM/1AGaBfYFmKvzQHWejGkJUJNOxS7Oz+mOyuRoIA5CDpUCeM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(56012099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BWxCQcJf/xYQOfkg8UaNA5DzptQzjkinniK2UsdFB1dZEMvlhKnVmtxrLG9u?=
 =?us-ascii?Q?rSyDsNDICPh6nAc9BPyaf0mB5DSrvuu7x9VLI9nd1AMVXieuSOyWr360rqNw?=
 =?us-ascii?Q?DxpLJ4mip1l7xfUd8XNQJTls2KeXzdXaiuGhaEOoBLNhelkmz1+gDg8K/lCc?=
 =?us-ascii?Q?uiQOMcd3d9t3FayvAFtPmoduvjyYPUf3eS5FZDWx5bmrAf0aCVH4/dZ8WdEJ?=
 =?us-ascii?Q?3AKAbEp+hJDfGhjeTVnR1+7pzI6kjjjoc8MlyMq2e1kfyPOnqXCqtPekX09J?=
 =?us-ascii?Q?qBhgMvgywwOXNf3Q/VHFaDdqHTKxp81iGOqacR3+TBIuGaKFFY/slCNPHqfr?=
 =?us-ascii?Q?3NcAaQm1WNnsg9lKI8Mv1VqyTTY92iHPvWJ0xWBAbuJ1LxEZzTbS6Bf1Ec8Z?=
 =?us-ascii?Q?WzmEa9y9B7tQRjDvwdDKZN6TuUxgsuzkx0DdBswAOCtR9uEQrYVb9JlLELAf?=
 =?us-ascii?Q?ROiiuC7kkM9H3JxEE47M7YD+WkMs29/2M+FhahBQGxIkD7semVcjfgnEcM88?=
 =?us-ascii?Q?5la/E+8tG5JaVjbkeQkDNlbcKar8yYp7QmNmBGL9iCvPCbD2GoIm2s8Ygecd?=
 =?us-ascii?Q?kIM1UWELKWWpWHRsflZoBIAw9+0LYEUAm7UraYESJ1H6mQNAStZiMfHbQAUw?=
 =?us-ascii?Q?xlfPP2E/vkRK7BQG1C5XlBut4m9L2GPTf7h81hFYPs9hHRP5AeQZMqFSlwkE?=
 =?us-ascii?Q?fTiJ9PUKe4rPGnRHA/8P05VLpJsa2FkxPbcCXKPyfXcGfZVUMCe9HiNUTBRa?=
 =?us-ascii?Q?PXb6XajlZZxFyTdnGPkEbig9uAM60Eh+0rf9oO4RvMyqO9QNOyBTzOPmQeik?=
 =?us-ascii?Q?7wQPY8ke5XpLZmq8mo7PqzD/Hm35u4oArFkU/Df02Ws/Ah+THiaA8Q0aubDN?=
 =?us-ascii?Q?KRoFM17exvcWDpWM6IY7I3y1VGVLTsuFuk1E80QxhfbMBHzYSOEJHa6LDF5N?=
 =?us-ascii?Q?7X9kqouC9e1Ml+pSSVnERSRFiCnfbOY5KK71tcA+kNiqu9L802ZLU+Vxv152?=
 =?us-ascii?Q?aLSjJwxrJv0GSuH/aH8x9JkXpahCI847GtAywIJaoA9ioj/FLIUTNmwsYYpe?=
 =?us-ascii?Q?C3hA4dvG7nA/Wuw0f2BP0Eb9ODwWytfapvqAQRKaLtWH1MnpIESBpjwAzPkN?=
 =?us-ascii?Q?Hta8Y5DhgXhSauNh4nWls0cUDJbt6XHgA5myKDcRSDAoaBu+zV7x0rojihZf?=
 =?us-ascii?Q?xIyTK5rstd12wiL5FiHp4FkYlbtYpcWvSQOtIj4CiMtF2pvpJCIfh5qXNSdr?=
 =?us-ascii?Q?cngPBkIhGWT4ZYVW+/96hw33Mm18rhLKg6KRaBGeXZSbI+lqSiK4yodYCcfm?=
 =?us-ascii?Q?PjbcQEJczd5kpM0wEYnV84yohL6H9Yr4VGDD43NFl3/hoHdqmqn9wcK2dOwZ?=
 =?us-ascii?Q?e401t78vmb0CHy7kboBHi2qwXaulBDxXmrGlqw7RTfuJyNUA6BDWecPt8UEF?=
 =?us-ascii?Q?bgchy7s4jxXxG4zjYFbPunpNQB/2i+PDPvwdTZDiI2Wgsa8IqCUOlBdru95T?=
 =?us-ascii?Q?GrL8cvyZED1hZylBzZOUGM5txdAnkPwWQ/FcKecPCbxJzJt1CZZ8aSfKjYTF?=
 =?us-ascii?Q?jR5mRlr+dWcJod7x/Nj+AcEaUPjlJL4IblJKtBATLBJ0BWCE2Arg+RY0njqP?=
 =?us-ascii?Q?oomo/v4BpeYdpKvgSyusWEHCwebBElQ5FkxEV9VS93NK/ZE8sCCJCgjHkJvV?=
 =?us-ascii?Q?xvuWAuyTOMn+Z4stL8cWkF46VHxWu2ZS8YpkgsbPMeI/JQ/2gBWF4el3JWcL?=
 =?us-ascii?Q?Q14lWvAOOUNvVQ58XASUAztfrSRjR6I=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: h3yZ2uQCFKXSQtz36aXc3VP7kX/3atnrv2f1UUejYIx75jcL1GgU11kTXSV8lRPtcQ3K6BR6CY+6kLU5fpw5EfAhVqpZbpcYuI4oFAcuwQzg+XW8hJl6C8GO4v1rajaOdCO6jZhIRTs+SjVAKD7urvYceLetb4I5Lq5CUvkR8gLvvvn1HmXwq20gePchu6UateOsuiJtzX2NjiimWrY6hhmcwZWpwTgNCqvkwMYGlQM7FWoroG8rIKdXN1828FIyhPcqWT5Hw6Y6aLLi7ZMQJf8hkwfeuIz8LBFV6LxYBDTfttX8N3ZFoYkA4cTsDM+Qe2MxU/nOS0p9Vj4mBTLMEw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f022de37-1474-442d-093c-08de9a1ac8ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2026 11:41:36.3303 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8oM96CiXTMLqaxSR5OZiKidemyoeOx0ZKKEZiXp675s+mNL9lMTLCd1ywPeleRdW9muUmFAUStgtNCvxFRKTibDIxW16c21sdHNFa5C/El0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB9874
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776166900; x=1807702900;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PhHgHN+9pwLTZOBehIS8WZy6lWZIOJOq21alMX2ag7g=;
 b=R/u35SL8gWfOqR5UYbH82SZ2JNp2B2LxJyxIxHCNdsczoqbIDbUFS9iQ
 lmkPQrR1DaTIV0lMiOL2DJUpypNcQlDHB4+2Rc9Qc2eMRdd4y1mOol4UC
 64qSAfez9RTMgvajcHue/1fR6Fzh28L6jIAoZUDw4kfI+5COhGga4XGaH
 x5iMCljk8NfLOVAX9rgMZ5SiVnXH9IBaw8P36vLapukL2EbBrsC/VgfZM
 2+vuXyY2lYRlA14suUH6KlWxO9bOIh/qykN1cSM5J0N8m6LmS0ePBCukr
 0tgOzdLFIGhB2fu+4/yCjoGP63rHrVrcuktWkTok3xer3xeeD6fYe87Yl
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=R/u35SL8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 4/4] ice: skip unnecessary VF
 reset when setting trust
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:netdev@vger.kernel.org,m:jesse.brandeburg@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[davemloft.net:email,osuosl.org:dkim,osuosl.org:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,intel.com:email]
X-Rspamd-Queue-Id: 8F5833F97C7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Jose Ignacio Tornos Martinez
> Sent: Tuesday, April 7, 2026 6:52 PM
> To: netdev@vger.kernel.org
> Cc: intel-wired-lan@lists.osuosl.org; jesse.brandeburg@intel.com;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; Jose Ignacio
> Tornos Martinez <jtornosm@redhat.com>
> Subject: [Intel-wired-lan] [PATCH net v2 4/4] ice: skip unnecessary VF
> reset when setting trust
>=20
> Similar to the i40e fix, ice_set_vf_trust() unconditionally calls
> ice_reset_vf() when the trust setting changes.
>=20
> The ice driver already has logic to clean up MAC LLDP filters when
> removing trust, which is the only operation that requires filter
> synchronization. After this cleanup, the VF reset is only necessary if
> there were actually filters to remove.
>=20
> For all other trust state changes (setting trust, or removing trust
> when no filters exist), the reset is unnecessary as filter
> synchronization happens naturally through normal VF operations.
>=20
> Fix by only triggering the VF reset when removing trust AND filters
> were actually cleaned up (num_mac_lldp was non-zero).
>=20
> This saves some time and eliminates unnecessary service disruption
> when changing VF trust settings if not necessary.
>=20
> Signed-off-by: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 7e00e091756d..23f692b1e86c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -1399,14 +1399,19 @@ int ice_set_vf_trust(struct net_device
> *netdev, int vf_id, bool trusted)
>=20
>  	mutex_lock(&vf->cfg_lock);
>=20
> -	while (!trusted && vf->num_mac_lldp)
> -		ice_vf_update_mac_lldp_num(vf, ice_get_vf_vsi(vf),
> false);
> -
>  	vf->trusted =3D trusted;
> -	ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
>  	dev_info(ice_pf_to_dev(pf), "VF %u is now %strusted\n",
>  		 vf_id, trusted ? "" : "un");
>=20
> +	/* Only reset VF if removing trust and there are MAC LLDP
> filters
> +	 * to clean up. Reset is needed to ensure filter removal
> completes.
> +	 */
> +	if (!trusted && vf->num_mac_lldp) {
> +		while (vf->num_mac_lldp)
> +			ice_vf_update_mac_lldp_num(vf,
> ice_get_vf_vsi(vf), false);
> +		ice_reset_vf(vf, ICE_VF_RESET_NOTIFY);
> +	}
> +
>  	mutex_unlock(&vf->cfg_lock);
>=20
>  out_put_vf:
> --
> 2.53.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
