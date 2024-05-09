Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D22978C19B8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 May 2024 01:03:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 65FCA4049C;
	Thu,  9 May 2024 23:03:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id omlg-nZOx7oc; Thu,  9 May 2024 23:03:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E3B640AC4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715295817;
	bh=OPWU5+ix3aqGPvoCdrj9AWV5ve05Hc09CyLmUz2F+Ws=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ae3eeoLiiC6s3zGG/BJswula6CTr+McpuuwovTZZc70NmNoz+2Ei5zWWiiKpTo+w0
	 18lDLkYKv3YLP2h1AdRkcrWr5T2rXbTD6NoxP/zYD+7A0QAtod3sfH8OA4hSTfxdLZ
	 +Dcyj1Cctg+wKlUnlaq2TNxa2ERbYA7M9aYRDVXxwjJLrnpPbBAEryYXZdXCq0NZuH
	 3fj6pcMOZSWwUA1aNtrWPicI8OfGqPbUvayb4CokwirbyQGnUjLPotLdOh5A9wfw0U
	 TeuWes3m2yk/vOGG6FLKHPXBY2SN5g61Iuf9war+7nwLbEfrZFcsh428JLduXqbUrq
	 4tAXvJCHf/Q4A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E3B640AC4;
	Thu,  9 May 2024 23:03:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C76191BF48B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 23:03:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BF16C40448
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 23:03:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p2lu73uoh0R8 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 May 2024 23:03:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 608EC4021B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 608EC4021B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 608EC4021B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 May 2024 23:03:33 +0000 (UTC)
X-CSE-ConnectionGUID: 4aRxukEiREq27tru/+zHzg==
X-CSE-MsgGUID: 2I3OKWSxRjOxAvtXZbW5lA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11412678"
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="11412678"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 16:03:33 -0700
X-CSE-ConnectionGUID: 39k5i6SJSW2XgS4JKO+4kg==
X-CSE-MsgGUID: Qt15jePoSVqrbmgFp0g3ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="29445675"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 May 2024 16:03:32 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 16:03:32 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 16:03:31 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 9 May 2024 16:03:31 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 9 May 2024 16:03:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QLXd68NPVr+dZrzTPCGJ6y8XOBODorhNKLis+JDVZU+HiGo17+OEgmOS1SixR1fKMiLOdsUvUZaUlubznwg4bhrzQQw2bTmtPvoUK49tU/aj638Opx8sQsghSra43cKs+g67njk/eT9x12uExUoWPoExNRCjA1mfQ7IwGZEhvYMjvIn0H/XuEN+1T8rMtKAVaFQi8G2jtkhZq0TlM4CzFmkav6ZxcaVP4JaBCD7kkTQQlE0D3nxLTOPa3egvBQdBhNIqAXYXJhBT26pzFVuKyIdtntUu9IQaIiXc/MOKIs3V2kS3ZlyTuanIHqGCMH8o6MMsmahfZYLrl/xg+EpeZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OPWU5+ix3aqGPvoCdrj9AWV5ve05Hc09CyLmUz2F+Ws=;
 b=NisPNsE2KYsMULXN/qo1kj4QsDgB+G5qtpqCNNefO2wACAo3bEPhntoHJuQ6PAqGt3a/BWwSarcOR9aejv16ICCGdQO+919tZuuOUn0yxmKAtCjVqckrxYkEGYb3ZaZtRlA6KTecuD7kr7qNXCEDJ4KxG+lqC2Z+FUToJuzSVIQ7d681dn+Dus0i/SgLVwZx6AZTTamTRowJdj413l4qVlD5XzNAgaAYTdRlbYj3WK5bZYc+9yI04NemFzGfoYq8o1Ry6PlCRIJwsIN79ufCZSqv2lhu5fPD9vjJp7htLXzDzjXBN9O4QcYoMn2W3GtxpdhwN7oZm6TVIncPSuJOHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by DM6PR11MB4706.namprd11.prod.outlook.com (2603:10b6:5:2a5::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.47; Thu, 9 May
 2024 23:03:27 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6446:3cb8:5fd5:c636]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6446:3cb8:5fd5:c636%7]) with mapi id 15.20.7544.046; Thu, 9 May 2024
 23:03:27 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: Simon Horman <horms@kernel.org>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl] idpf: don't enable NAPI and
 interrupts prior to allocating Rx buffers
Thread-Index: AQHal+hNhMcZHvVF2kSeEm3ZM1H/ILF/OdQAgBBgYsA=
Date: Thu, 9 May 2024 23:03:27 +0000
Message-ID: <MW4PR11MB591159578D0D2AFDB0CB8917BAE62@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20240426144408.1353962-1-aleksander.lobakin@intel.com>
 <20240429125742.GX516117@kernel.org>
In-Reply-To: <20240429125742.GX516117@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|DM6PR11MB4706:EE_
x-ms-office365-filtering-correlation-id: e71a554c-7041-4592-eabe-08dc707c3cd2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?x+RQEVjloA+Qz3DmY5hQE6H18zIwAk8Zb5koILhsoiQJGsRep4jr8NWahQY5?=
 =?us-ascii?Q?nQqvwhs+F3Bg/jveufuyA9naaNTq6Pq+FVeBwelofBChGtQ+uZ5j4qzRmhiR?=
 =?us-ascii?Q?5Tm127FkcznQZIhPa2kRDpd/vJPH32477ECEMRYQVb96tjKG2W8soVHlPEYe?=
 =?us-ascii?Q?zomU5QfV4UK+STRJgSCs709jiIwS0i7z5TwRoCiNdFamAx9upzeIaQAnEyR4?=
 =?us-ascii?Q?48+mytxyC5GpQ3/u8VuYX/8Jii7M6riW/Ee/ILxrh7DhGQMWDIQnwC2YeAcK?=
 =?us-ascii?Q?XTwPubpSNyZXQI/t0mjKAG+XWtK3LUMePF/puWUuRkuLTjKC36E9DDq/y+Gw?=
 =?us-ascii?Q?dC8kjAn3Ik6ChhNWEvh1aelgp/NDhBDxhabslNhFFWT5kZ3hagDQDdmnxoEQ?=
 =?us-ascii?Q?oLgnx9en89oHI0p/AINjd+NfmU8hSUmBErmo47rzIWb6hTVoXUEslNlC1vip?=
 =?us-ascii?Q?3Pc1xDUrk92nSy/LPCp22s+Fmj89qY5cxwj3YcERUawp4qbOTWsN1M8XQMWj?=
 =?us-ascii?Q?u1KnAXNfCd8yRG1OxVwCDMCHEihnev8Rquhqde38ugpqwmEb5GyaD7fprZ93?=
 =?us-ascii?Q?wfAYspwmvNl76SCwI5W6gtsrR33HiMqz5asrGQSifPDOIwQtr02YkkU7RZlz?=
 =?us-ascii?Q?ulW5OCzbMVBqHrFz0FTkxB90OVHLRzIJhN1rvZy/YXD3N9jnMYmf813TwFfl?=
 =?us-ascii?Q?YkWF0x7guhcMkzLybjPQWhdkV8o7Wy8s7a/zRp3NF/nVAj6RktOBObcLUY8m?=
 =?us-ascii?Q?WZKCxt/zicnPvxUKIGQeEk7NMNi5jyUQTVPsEpD/aNj2tCCgq/Shg0U/RLe/?=
 =?us-ascii?Q?qb4wfsit+tiDt16n022PHDq+K5V/sZK9eXZkzG9mI5mOIi/OaBh1kAXwQOe8?=
 =?us-ascii?Q?AaqlXycWOHOMG+vHwa0Lpk2+PQNYWdvsND1iPL93yjY11dfpsjj9l4D3N8qx?=
 =?us-ascii?Q?Vy+c5Y0N1Wzl/+IEB8Yj0Gi8x3/QUcr71TnQfRMJkRJh5lRMENZDNSprNVhe?=
 =?us-ascii?Q?KNSfUuWQuisbcS44qg96WYyG64nKQYZLe2WXly2NRytcLRw4oqRxu0KAhT79?=
 =?us-ascii?Q?WRRw9W0+Tul5/7Q+fH+YP5Yx8/SArhrFG2KkwLCQMPY8mpAizWuLV+fkXfRs?=
 =?us-ascii?Q?6Pk/BZW/tqlmzhc/O3aUpa4gL3wWqw1cJ8u+SHmXec4D+J/8K5L/h1Iwjdnn?=
 =?us-ascii?Q?lzFBLvYuQKH9oh4JyKLb8HcTzilQX4AexX9zXly6EtA5PdisQzCdJcbp6kkx?=
 =?us-ascii?Q?Wf5fS9P1NFBrPKpYFyIM79TbS48gzQDc8eZCXmDCPAd45MeQrUTCI04R+6KT?=
 =?us-ascii?Q?uZUvD6FQSyYo2yWgpqb2/qfnjrua7dItHgd9eECTdPcpPg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RBxKIZyKYZgj7WBYb6gR1F97sYK6B5Gmd6FzgCFlxnah8rykhfAO34uZoRpG?=
 =?us-ascii?Q?RntwQXR9mSNzaaxYenICAlvjf3Ysi8+3t5Q4lLvKvFvVYU5UnbrFBVTFeGGq?=
 =?us-ascii?Q?2Y+ede1wBy2Wr+x2UR2OFXS9F/tn8tPWtOB21diAOiu9OP+nmoWlfloT0P6N?=
 =?us-ascii?Q?V712fL7j32t8hkRcTjPR/6K+OJNXhVx9nibLlprCafgqF5fGfrJOrKs1IBOR?=
 =?us-ascii?Q?pmnmhoDyb3tqwROwfVvrKfMq+fw5uM4sXO/XTrO77kYY0yVSdgt5OLqsro8a?=
 =?us-ascii?Q?WkI+PEfLOWTe2H3aN7t35pbJ1c5D1vyo71COTgZ72m+QUifSuNnxWdaduxuz?=
 =?us-ascii?Q?0jW0BlKfK0vPDinikRFVvYV/04vLYGY8Zzw9fe2sIZPbftfuBRHktqUgFvUB?=
 =?us-ascii?Q?RbHfWApePUW6Y3Ag24kYo4x1VoKDWwACcz0s9ybL2pxHLhZV2T+z1r1oo0SO?=
 =?us-ascii?Q?Wvzyev1xq5v7rD2F64ph30n99Gbxv7MTVW3VP7kNKnYCZfEJWrNux/h6Ygf9?=
 =?us-ascii?Q?jQjOxjgK8mHbF7nqwCz37aqX28e3sqgDLpYfraswQfg5jRMYpE4VV6mEp9rG?=
 =?us-ascii?Q?rNWt6zokRR3fsFwC3+E0EzHAzwwQC/xeVxX4PVQjkEchVN4e/Ua4Q+TqBgVR?=
 =?us-ascii?Q?r7czvHCKfDPBnbfUsKD3cOBS4jQbSeERN57/hI+trXjx9Q24FDvGpacDDQ5l?=
 =?us-ascii?Q?EnheDLku1gPpcI6aHucKKwB7hiHO1VJaeRiFjpkkTISIL4a7nk4OJLOjHXjr?=
 =?us-ascii?Q?dMfnW7kuOF+9FQDdNM3bd8D1HMPAZDyjqirbVAlPQKDC+GO6yIqBj0ucrNnq?=
 =?us-ascii?Q?vTOU+nohse/uZIQ1z75GXq3a6qPAZPBu2RMg9ytJcFEwO8FukbqXDT4Qa8UF?=
 =?us-ascii?Q?iZq5ZuCY+iMajz9My47l01NNB4PGbqzYF3ghY/J9Jejp/k9NDnwmST1jUN6Q?=
 =?us-ascii?Q?SqHNm8BcpKJrEeae147LOOW3zigpKjhiX0UAcgII4QDUq/fWASKCs47i4p+p?=
 =?us-ascii?Q?FFebsmnDTlFEAvMpG84+h1/BsWpgMhs/EkYLJ46gU71XrUqzKxQqcLZ9uluN?=
 =?us-ascii?Q?uwmEQ9HgDR+lxGN3jkaoE1b9sO9MIaWYleXTnEtm0RjDNBSmxMc0BS9Vokna?=
 =?us-ascii?Q?bDTL7ddUtuiUtpkVjCgQmq/vCJ0m16/95d4zUVOyW5AK3B7y5fkp9jTXrEJw?=
 =?us-ascii?Q?ij1ToOMqBzGloV2bdSCK6AyO+9WrVkjy2o7vPxBTGwUF6ASgb83fXu7W8ZmZ?=
 =?us-ascii?Q?7jIPv2lkxJwb6zuRMXB0AwBDHgEYQbW7LmIQu5iIWTkzKbhdp7ADJaUT4uX/?=
 =?us-ascii?Q?jfTXJFTk5ETvJWDAJ5U72/elTyWunGe1b6QmYK++d2Mn2PUWO1CLhqLcIuuW?=
 =?us-ascii?Q?YOaeCCeqNY9a3Dqukri6eZDj4UY+Y+rClOuwnNiRimFo3bzBMI/kb2uRUL3g?=
 =?us-ascii?Q?8gtS5bUBt7KuKV+x7zWgxx37WjSVAN9nx6D6ZMz/rqCViR6t/E07h8IIDj3y?=
 =?us-ascii?Q?hl15jvcjOR6/00YknKbja2fpBEOKrGzE9p4tFsPGbwoRXw2ZA2Qd34MxJi7Q?=
 =?us-ascii?Q?NhJGiB/VMfE+5q8vZRBPEvKgyrj2thkIOHxyBG9Znc5m+hSJSCjf6GYAAfo1?=
 =?us-ascii?Q?Cg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e71a554c-7041-4592-eabe-08dc707c3cd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2024 23:03:27.8081 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: axHfGpAbhsNdUoElfTahel5KHJBbmL5yKqK+enKq9VF2aDxT/Sm7LiXgi1FtjlnQf/q6StpFLzMRgUFlVdl0v3jhMGZAJVNYfl5vUhAv/N8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4706
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715295815; x=1746831815;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OPWU5+ix3aqGPvoCdrj9AWV5ve05Hc09CyLmUz2F+Ws=;
 b=nUhZa15O9XxxzXDISdrTe/68k5iWIDvmcVa6wM49W7sjCHCpTsz/MK3+
 ++1Yzf13Zjcc3pmYb5qSxyxtlT/jDsvNUWKj0+0qD7coWHvyYnt/v2oIk
 fjNvzhGdoElgQ8HODUuu0Gpo7k3HPzauJQKXrYU1lH7InNvRylpyQVWAL
 PTE08sNpKNRmBpY5DQdpiMNFFcuHrtkLIK3petK1Ud3L9J+dtNtzgvBQF
 7TUt+M/3zb5ysLa4EmArXDPitGKqmqb6FA2WYRIPXvXgHxSVIL5g2FBJD
 irvgOd3TKLjT7939HJL9h+B7gE85Tbp/7AyCiRYBsmAoYUxRzySscwj9f
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nUhZa15O
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl] idpf: don't enable NAPI and
 interrupts prior to allocating Rx buffers
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, "Kubiak, 
 Michal" <michal.kubiak@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>,
 NEX SW NCIS OSDT ITP Upstreaming <nex.sw.ncis.osdt.itp.upstreaming@intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: Monday, April 29, 2024 5:58 AM
> To: Lobakin, Aleksander <aleksander.lobakin@intel.com>
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Eric Dumazet
> <edumazet@google.com>; Kubiak, Michal <michal.kubiak@intel.com>; intel-
> wired-lan@lists.osuosl.org; NEX SW NCIS OSDT ITP Upstreaming
> <nex.sw.ncis.osdt.itp.upstreaming@intel.com>; Jakub Kicinski
> <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller
> <davem@davemloft.net>
> Subject: Re: [Intel-wired-lan] [PATCH iwl] idpf: don't enable NAPI and
> interrupts prior to allocating Rx buffers
>=20
> On Fri, Apr 26, 2024 at 04:44:08PM +0200, Alexander Lobakin wrote:
> > Currently, idpf enables NAPI and interrupts prior to allocating Rx
> > buffers.
> > This may lead to frame loss (there are no buffers to place incoming
> > frames) and even crashes on quick ifup-ifdown. Interrupts must be
> > enabled only after all the resources are here and available.
> > Split interrupt init into two phases: initialization and enabling,
> > and perform the second only after the queues are fully initialized.
> > Note that we can't just move interrupt initialization down the init
> > process, as the queues must have correct a ::q_vector pointer set
> > and NAPI already added in order to allocate buffers correctly.
> > Also, during the deinit process, disable HW interrupts first and
> > only then disable NAPI. Otherwise, there can be a HW event leading
> > to napi_schedule(), but the NAPI will already be unavailable.
> >
> > Fixes: d4d558718266 ("idpf: initialize interrupts and enable vport")
> > Reported-by: Michal Kubiak <michal.kubiak@intel.com>
> > Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> > Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>
