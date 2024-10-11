Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB4599A0BC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2024 12:04:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D66C81815;
	Fri, 11 Oct 2024 10:04:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kojmWhpaCna5; Fri, 11 Oct 2024 10:04:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03ABC81799
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728641089;
	bh=LuJVPpcS2mClywReTfLfXi+iwkEXxt49F9SIwfp6NOk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OYv5n8UxnhrYW3HRzPPdxSwq9c1jgZ17IAjYpUNXRw08nIwetlSB1eCwaLSBUmg0E
	 h+ijZTTQNgG10sRkbT+R7Dygcqipbo0aZEeTOCZiRg5gM1o1S/rmGtrNztBZuQSS4p
	 O2z5wi1e8z78P3ndpHPWrJe73HR/MhRcOplIWXi2Fy0ovdusdIyMlqgDm2b6FpgDmF
	 b7Opk8svY9m5NCMPJoKqNOde4faFlKHhWaMK9Lb9naUZdSDUf65jEjHOrRRuN0N10I
	 Q2lvSr14Jmwxs0xQ3WNvHl9jsTVfSD4kFHPVjY5W/TM1DcjiCot4efoeNRkLX3f9JD
	 qkPMvVtZOgX1Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03ABC81799;
	Fri, 11 Oct 2024 10:04:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D81B11BF318
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 10:04:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D29E941563
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 10:04:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bAQ-T68tu5zE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2024 10:04:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B309240374
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B309240374
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B309240374
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 10:04:46 +0000 (UTC)
X-CSE-ConnectionGUID: Dq5rwkKUR+Oebr8as0SSZA==
X-CSE-MsgGUID: 9+oT//OdQySlOlSBwSF3Wg==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="38617150"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="38617150"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 03:04:46 -0700
X-CSE-ConnectionGUID: sWJHEPeiRXaVYlK8imLzHw==
X-CSE-MsgGUID: Ai33tzPAQjChh+NM7DGb3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="76526058"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2024 03:04:46 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 03:04:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 11 Oct 2024 03:04:45 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 11 Oct 2024 03:04:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ez/GFzXEhQ//8zAVkK231+184mKpNZPpnp7qRs+YGAeLDsG5LSqwitUb/zfyWih69ADTapWqv4c/KIkUyF3f4JRKV3uywCbj9vh74CpbMYLZaEYm2ABeEvICUrgdQfX9IlzYIn0uPXwnIUoeZQvuqVvbtkcPKWjaXlXXQHYrI6U8iyepHSDluqEWxd1fA3hLdj+9ZW2x9jzDpNzdrKxqN2rWhrPqBlIWxlXLGx5POmkmlE6epYCsBn7RVPH+7FNZQ25p4y6p4ES8Oc55C1oAcKuVUVCy+bIIac4K3Yuc7BTjKAHXFHiY/oW7BuMi++utfKHlnWKcec/dg1DZ2YeNOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LuJVPpcS2mClywReTfLfXi+iwkEXxt49F9SIwfp6NOk=;
 b=V8EPEwCufNvVXbuWZKMrt6ZXN6HrQAnSDGXVG6owYthHQoIbU5rcYe9F68ZzCsz8JyZwb1Sxotbm52P5yTz70hk1h8FnA1EC0rYWcUoesyrbFOjNKJKyAJZcfrp1WMxNEaayVFWyXcB0bBfrBYTH8TRU5KPiseIeZrzJrgjqcv92/GQ5dCSrx4ObwHpqvDGAPZsAV1GCk+KzFwyaLh9UPk0N73M6It5F2KVuUPFrd0HpVtGbNI/7UNLsqrwPDiMt1MKo99hpn+ig1Yqhv6N1f4JoHrKDX9o8csZv/+TUbaDt1dF+vDi2LJcUjfJKobz/kTEUt5rEgH3r+7CTnJSHpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH0PR11MB5078.namprd11.prod.outlook.com (2603:10b6:510:3e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.21; Fri, 11 Oct
 2024 10:04:40 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.8048.018; Fri, 11 Oct 2024
 10:04:40 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 4/4] ice: ice_probe: init
 ice_adapter after HW init
Thread-Index: AQHbFMHE5T9o/qOxykOjki71zXV03rKBYD8Q
Date: Fri, 11 Oct 2024 10:04:40 +0000
Message-ID: <CYYPR11MB8429D46C127DC1B9EAEBA26ABD792@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20241002115304.15127-6-przemyslaw.kitszel@intel.com>
 <20241002115304.15127-10-przemyslaw.kitszel@intel.com>
In-Reply-To: <20241002115304.15127-10-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH0PR11MB5078:EE_
x-ms-office365-filtering-correlation-id: 6dfd96b7-17f7-44eb-b845-08dce9dc1f63
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?tLXbvbskBSGAX4JxRRw2O6VmWYG/9ebUB01rrbunNE7wZ/EZlGsafy3LeVqj?=
 =?us-ascii?Q?lzxsAWSR2VszXX75HqwQI7eJVFQSQ93azquLlbMlqvB9uWtPmr735vVeCWLD?=
 =?us-ascii?Q?xpMCgSueBTwcmDTP82EI5qKlbQtmqHYLQOxLdSUVQnj/BQgF9twkn0d1AlYw?=
 =?us-ascii?Q?ZTAPFU5AO9b7beC07/p7Z4ylnNN63GBjGTSIiRnD0MnB+kAIi0Nim701SEmT?=
 =?us-ascii?Q?g6EpcULHgpBlAOmuqK2AXxEuYKPKakTsP9BwZxBJIqoLGAR9HJJvo3u4QzQU?=
 =?us-ascii?Q?Y56MUccTJ34G2wH2RNt7KC+hB8o2lE5YL+Lm6AeclhDeFExALnSvXayZiY/V?=
 =?us-ascii?Q?FOXd+HNx7tRRlwKE5qh2ij/CnRgCxrRVmbtYDrCv7y6L2KL4lUzXTnpgWgN0?=
 =?us-ascii?Q?OAlxHh8rIh6yEV6PFCvJvcQYRdv6jJHmRlmHKXqAaQO5M5NVUVTtcaWWtFYx?=
 =?us-ascii?Q?zy3F63lljb9IunyE6kNLoZCRPwpaouZx7Y7u8yOhltlMNBIO6zmKGJ01tM32?=
 =?us-ascii?Q?lU5MlNrRFlE+Bx4HXo84PSQAinSbb/+PtPMl5JmwoNLo1+76fKCPL/Nm/Wix?=
 =?us-ascii?Q?CXqhXo+jVXALQ4gCXVMlXHMPQ1fvUWyAJn2k4vKEILSV5H3sZLnIi5WoWMzo?=
 =?us-ascii?Q?8J3MW+hPstebsrNbyRjODOX45/XfiVDFt4BcSFVwFwl2thGQylDqks7Vr/pI?=
 =?us-ascii?Q?KHLI6X+yhZ37gWqdl5yNyq5PygG8f/T+SRU0QqIenLyNUysPM2t2YmBRJ96W?=
 =?us-ascii?Q?EG7OvdK8V6sPSlb0G9ooKbli0wRhQGyXhMNl/fmyhLmnaovifkVWsTginjip?=
 =?us-ascii?Q?jUdPCpOZi7HXkR8RcL91UbSDATfvDKAa+F+5KDsO4ug0njz7VikPeHD7/a24?=
 =?us-ascii?Q?J9jQBbYrSgimBx1KAP2q5sX7KxkM8VjhxpvdSFMSwJOEicPP0iuneeKyOxPp?=
 =?us-ascii?Q?oQ5HINQg1bPnGV6LuFMm0o3RcDhLp7uH20AiHTnyZ90INymay2IWAQkQ5Uob?=
 =?us-ascii?Q?onMD2Ln8nr51ycrW34/v415zCYrMVjVkna/5dJfxfqBDWQqUPmBjoWnK030i?=
 =?us-ascii?Q?FE7No9FKSWkQgeok9ECXnq5HGCvTsQOA5m2bre/DrONQopJv57OVu/2ms2wp?=
 =?us-ascii?Q?arcf/jgxEe8z96zNYTwqQb4wv53+pYLbVgOppd7P6tJ4vWoqQiZBoRoDrxhx?=
 =?us-ascii?Q?1AGDWEpFN3z/PxE+wyNzRpLKDQNEeUcUeMQdnktB5jqKrJ+/IvDP1isZW8U1?=
 =?us-ascii?Q?k+m0BW6/JbeEmuByKTjC9OgCMsZQv9rHQGVbwTyJNDHgxM2ryYwo12/tho2s?=
 =?us-ascii?Q?TRjOVhtu54GKzzO0B2uWRRXtYmPZJNq9fh15B5d3UTHFFg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cf/aCAFsI4EM+0/L9a9PuW43EjmPSbSwdaCcEZ8ELiBBfetrzu5X6wHxtuJR?=
 =?us-ascii?Q?5uUdI0hs6+XH4DE8WmjeB55UUW1W2zbItU5asvaWLQ0u0EbuGBNk7WjITchj?=
 =?us-ascii?Q?/s1LP8DN/boeJ6XTIx3uAYbOgot8cnm3rJKgBZc2xIVpYjQAL5A8juBoaTU4?=
 =?us-ascii?Q?8kifgC3pZeIHVZ4+tw3Cb69zIwLdj/RqTXpwyE39lPrRIwaV5NxKDgDYZH7K?=
 =?us-ascii?Q?qUTyLv5+//DFXgXLuz/zCV0dZtPPFKE/dJvxgzFbnv4C3rt8FDFooQvthECw?=
 =?us-ascii?Q?BhIQ1Ossm9A1X8uuaJpcTpuHYFhHJPOmai/kndO1eDYIwNA8ArXrDalmK7Cb?=
 =?us-ascii?Q?67Bdnfhw+7W0gMZotgB2Ij7rsYlTUzlbkHCc7ofkudTI0nJpCIik75grpUrz?=
 =?us-ascii?Q?z3ULVXfB6jEtuv55+7zHfIZjjqZDW7tZsFHsVfUnOslXjrvzcFIzmmv0U695?=
 =?us-ascii?Q?IHAcP7mGwwWZGi26LJmb4v093BFV0MLRF5GGUfNE+Q0v9cQjSuxB8k2FJseA?=
 =?us-ascii?Q?GvFPG/JRuHmSO0P70WV1E4Tk5FJy6pHM1LarGLpxdHaFD5dIB/2jBiU+KL9L?=
 =?us-ascii?Q?wtQZrV1xnlY64VMiE9lm9JSqc09CY6hJ8YTF9qcWIFTANNgCVpbhu9/ZmIeW?=
 =?us-ascii?Q?ivub/UeXXu0xSpza/66s3cxLUzCs4L0QmneDm9ggMqhqr3mA0jXR4fuG7yk6?=
 =?us-ascii?Q?9aa5cQ8bUCipK2Rpc7hzSa6LL5+D6Dtz0OkN6nWPCy5bktisLuLkyIuAP++1?=
 =?us-ascii?Q?u+d2s/5wu7aqTfiWEm5552IA1gMkBHBMbVyPZwj9vdPuGtpmRp9h9Iv/ckKp?=
 =?us-ascii?Q?DTTwPYDhecWQpEF0uJbCQeZUYirzfh7pfkEhCJ7t10gl3JYYDv9kg+PvAuhc?=
 =?us-ascii?Q?wpwq5Utyleqcb/TSk6ATHMgM7+2z+kvsA/OvFO3EiohaXzvicnF/iWc38Z3Q?=
 =?us-ascii?Q?gZhO0goFYKGPsSbXOPJ2EL8k+olp6nKZXq5GPK3QpgRcfD8/HYKPSArcdnqH?=
 =?us-ascii?Q?mGyf7aO//4gIZCxM7lLXGmiizvGBHZ+XgcpI7qSqLKzfX14eSm4860pAZSv4?=
 =?us-ascii?Q?o6iRLw+19tOj9oaUgAI277gOGm9swkAgHwfeRRhzYeCQyWptaTRkkIA7n9OQ?=
 =?us-ascii?Q?gJUCgZoyyU2O5joVxVSjifBDbImD8Wy592CaC+sMOWrXGFsMOYXJ+VIDUKA0?=
 =?us-ascii?Q?Hp+z2NGm2WN97WUUwMR9kI2JrWeGB8w2IAjCDe3u0RND9LBmyscGhFNlKG19?=
 =?us-ascii?Q?jw/eNjlIJSJ6sRXS3AxJCvMMgJQyx+ItidMeQJp6pnoKWe1DQcM0NcXBWDSc?=
 =?us-ascii?Q?EGNzRKXWUIQxrc8C/W2NdBn+ygXDHbz6t9jwimeZTpJp24exnoeYu0q/TaNQ?=
 =?us-ascii?Q?zOXjWewDk8yUUUTKERbRBeRnE/gytTeFa3qRyeZJVC3jJJX57jXux8hwlqRX?=
 =?us-ascii?Q?5QKjCLw32Ag7QCdVqgCecM3CdJtk6EpGKgsHHK6UNKNkQgAiGW3HUxd195YQ?=
 =?us-ascii?Q?FIsxVSGFNqNSZKDg6AAmKz9XrPtDjPmqopfDU8SL7DG0WVlDlvS1eF2EUuXC?=
 =?us-ascii?Q?QBCL9m13CPHP6n0M6/Cm4+Txgto14I4t/CQqwohfJ9dzfywjdAKXZ1nYqsse?=
 =?us-ascii?Q?mw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dfd96b7-17f7-44eb-b845-08dce9dc1f63
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2024 10:04:40.8172 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HNhx4jHBBPR0mqQdKvFDGHnAtTeK3eW9Dc/5EpESfuL4AQcSjf4bAcYXEAptbgb3gHGk/3DgmoQ2v9qyFbooPLjLwPuhOZ+KKaYH1TMHOSBlT3R8I7rZR7mzXQnTG475
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5078
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728641086; x=1760177086;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oEUWTTVJstjydmi4PG9cG4DAwT/q1HRYaOaDefkDBE8=;
 b=icQV560f2gqyjRmsB8vVu+RTcgN31H0ud+1Vo71rH8nG1/GlUz2wI3Po
 OFjlvrnWJUXUDR3ra2o5lXhDwT4B66X7KA30CsRaGKLrhvjrKaEx5g7CE
 YWOrb0zipSRvHryr+4ad2IR8ktksn6Y70Iq52ZDjcMZpMdF4kNSQS2y+W
 juTOsmUC0ZTIPDnqbOoIvOrULJaLqk6NTxi+vIOGgQHRB8K8OllLJR0aH
 pVEoodzDhp02NrHeq0O4cb/qcqJKecpgZf9UEmAiXcoPiHsSde906SJ6p
 DEyfdd5R23Z8875VvCggWmf/ERT4RomsN5iwEitlj2mPzmJRAQhdEt9xT
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=icQV560f
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 4/4] ice: ice_probe: init
 ice_adapter after HW init
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
 Marcin Szycik <marcin.szycik@linux.intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemek Kitszel
> Sent: Wednesday, October 2, 2024 5:20 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>
> Cc: netdev@vger.kernel.org; Marcin Szycik <marcin.szycik@linux.intel.com>=
; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 4/4] ice: ice_probe: init ice_=
adapter after HW init
>
> Move ice_adapter initialization to be after HW init, so it could use HW c=
apabilities, like number of PFs. This is needed for devlink-resource based =
RSS LUT size management for PF/VF (not in this series).
>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 21 +++++++++++----------
>  1 file changed, 11 insertions(+), 10 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)
