Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D8DD3A4A7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jan 2026 11:19:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C0A38064F;
	Mon, 19 Jan 2026 10:19:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F1PrdNFF3TFd; Mon, 19 Jan 2026 10:19:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A865680661
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768817965;
	bh=lCTCCucazS0pyT0I6wOG1bspQ7xxuNrv2Z/Lq6k3qhk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=P+siHBNCwVmxnMLHxHMVXDBAUTBIj0C9RuCe6tGtoUkh31IQTXHCe28tfoDtjCY2d
	 jM0xWN7WCErVhhmx3IaP9JT20twRvaAl4RhUvHb3r+3VJVqUQOz82qfgsyTawjkdbo
	 pE7OncRRWT+dBQcviEhvjj+Iv2syyo6+GFCjO0dGc9XYlv5gt8ysHUEQh74W4wuUNp
	 U110O3rDWsS4cywA5fAEWitYOim6A84CIEB7V0BqwSEWfK2jIqkmIQMibRjDMzQDsF
	 9gDBhIwOuoZCW3GN21sbbig53SSIpdbMvQlIwG/EZqdEntgNlrNXpPz21SfSAWm+wv
	 mGJlxYBf1ozPg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A865680661;
	Mon, 19 Jan 2026 10:19:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3CC91160
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 10:19:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2007E406F8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 10:19:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RhKvzRrvPr-D for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jan 2026 10:19:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1C62D40087
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1C62D40087
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1C62D40087
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 10:19:21 +0000 (UTC)
X-CSE-ConnectionGUID: K/jwe+DjQtO7Op58OcFddw==
X-CSE-MsgGUID: RR9BrN4FRMCQVMmxQ05QHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11675"; a="69924635"
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="69924635"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 02:19:08 -0800
X-CSE-ConnectionGUID: MYFL5SAtR9uIB4GyIPrsdQ==
X-CSE-MsgGUID: ya8M7eR5RQSrAr5kpyHRog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="206091559"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 02:19:06 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 19 Jan 2026 02:19:05 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 19 Jan 2026 02:19:05 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.60) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 19 Jan 2026 02:19:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ihn9buDZHo6n3gYUiJEYuIo4tQ7c5AsLBntdFRZsT/qCsTbWrV8jx6SK/qyD94pEQD3n+3d5RWVtgIh52Ick+6zVZFcNEMXU+CIcY5+m0Oqx6WxnnAgUebb6YYn9rUY//a6Y9PbXar8KhZbnkNj/ORQdjZj67l2YUQeUvNCS2yMjnMGJQ91rEl45m244QKnVhdAWymNB6GciUhfVue7cZ/WMSVQIne7ECsLO+Kk8WecWE2vIF+te3WyeOulGIHyOr4f9K5Oiz8MvCqWBQILNc+SqvgapjqVUOOiRnlbBs5RB0FJllT9fJwPK+KSIPPVWrQVgIG8hOQ2nlW09z4szvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lCTCCucazS0pyT0I6wOG1bspQ7xxuNrv2Z/Lq6k3qhk=;
 b=zW8mQpNIVgKy/fC1m1zbLNnkeBiaXH5HNMAfgbWWxN2xmx3rj/6d/d4tUF9cditMo3lWH8hPtgN5UKWX6Eha55baNX5XK/yQL/V1j9jI92WaUOrt4joWiQtzSrk8oSALQaHBeub81Tth+BdlrHU7x+5PxW23o9SIXrbl+MsaeRXhwFfEbQvlt6NEW8dAE09qee9plF9GTCvSlvdFd3gefd14fuXyZu4yJp1E+uWtX/EcfEUn9P1BWX5KlGSogSlRO7FqfuqVnk9xsXIvGUgxf5DYiiSIdFDxc/RoQI+HcXW+41B4U9wpiKE9aM4VvP+ELGr55rFksBgEJ7HwEp6Tow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Mon, 19 Jan
 2026 10:19:03 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9520.011; Mon, 19 Jan 2026
 10:19:02 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Takashi Kozu <takkozu@amazon.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>, "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
Thread-Topic: [PATCH iwl-next v3 1/3] igb: prepare for RSS key get/set support
Thread-Index: AQHciSAZHHtEFDmxUkutix/O0BYf/LVZRv/Q
Date: Mon, 19 Jan 2026 10:19:02 +0000
Message-ID: <IA3PR11MB898693239F08B055E714E430E588A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260119084511.95287-5-takkozu@amazon.com>
 <20260119084511.95287-6-takkozu@amazon.com>
In-Reply-To: <20260119084511.95287-6-takkozu@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SN7PR11MB6750:EE_
x-ms-office365-filtering-correlation-id: 0620be47-1b53-4a2f-cfda-08de57442b41
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?IgaK1cFvY3/LQcQHz7pyZ2tqxVYT/i4cOYu/MBaz+RNTLkNtjQ54nqO4M4gs?=
 =?us-ascii?Q?Nm+HG47dsnsEr7RYr5eqEbOXMg91QisDPdByT+MK6lyV/Ma4T10KhizcZMS8?=
 =?us-ascii?Q?34sUsI37YE1e8YQYfRvGqttjXBK8iYackpkgv4+YEOftfL4pfwc7KA47HeQp?=
 =?us-ascii?Q?j1ul5MmZyqtFOrs+7pliOQ2jnF5vcDO69p8g8dJcrejvaJITCCKGfXrMvyp9?=
 =?us-ascii?Q?Z+YPRod1vVSDjULH7FFH0g8fJlp33PXhW0VBGUNwYD6Fyvb/E3z0fsEfJCRH?=
 =?us-ascii?Q?dOED2OXRz0GCtLD8OjzJ1dqLh6ZhjIAM7tmm8GkOuzhOI0JVkkWqtJa792iB?=
 =?us-ascii?Q?TFu9jTCpYPFM8XtVCtxUsyjRaPX63Qx3U+PvZHzko0OeudDdMbAvM35k+HTR?=
 =?us-ascii?Q?KGtjAdzr6MZKYcdVA+WbhxGq3laqeapc4e/AaJ6XaSREYDgdFZJrHcL0r4px?=
 =?us-ascii?Q?v557A/L77x86aAqA41mO7UWIazDiLhIArTRMorPGBNn1SXIXSC3vbpZqNOkK?=
 =?us-ascii?Q?EWqz9X6zYcEmZnWKPnxHPYXBy4pNWBM7M9hSyGcGZYfFJbzVFQmOPFhed6EU?=
 =?us-ascii?Q?072zGy9pZ8KjVpkmCw5RrRqcAnpBLDHuosXTCzEmoLaYrdayvIyV7fLy78wq?=
 =?us-ascii?Q?kiFZdg6mzgLz4EkivgLb61Xw94ss3CmO+FS3t/Cmg7wtH+tZv3ynzV9fEUI5?=
 =?us-ascii?Q?Iy1AVI9Rk2P9Ar8bshIo1SuOuGGn4Blyt8heQBbwyEFpqVWy/InfQLKESyhO?=
 =?us-ascii?Q?heQmDVMxpx+fNoRNdX+AS4e87IEFDgbvOrjdCgowOn++uVIajevArFKOsBRk?=
 =?us-ascii?Q?7slYoLX9GVGB0wtSwT21xzab66S//JsdRadRdOR2b7jHSWEjvrfkp2l38CCi?=
 =?us-ascii?Q?ouSixTrAbqbEhkvOZcEvLU0l/rNOUQjAJADtfCNhdfmIpypLdeLlo1YphLWq?=
 =?us-ascii?Q?A7tajAwYYPfpRofjV/IFV80KakXEAELK+WlrdLRcQfwaazJ3QYzbmX7c/tN4?=
 =?us-ascii?Q?OzmRjpHtk7nO0ka/P2JTP32waFVEjekErjeSzcI6cqGeAI6/K1XKdCOy7vMB?=
 =?us-ascii?Q?P7YMmAVAY8gfj1sPYkVu+3OPSw6b5k6AeVRdTN1+43moIC7rzys4z7Y+yeqo?=
 =?us-ascii?Q?R7cQdbew2iCrocrAMpyNL6eHnILRr/V9IA/rfz/Dqs0MpHEuEtgGciuBEf4I?=
 =?us-ascii?Q?hjdNClsPGPGig9pAbvnP1Gh2sjH5hg3PSmOtrKFYdGHXVm+sC8ZkrKMr24L1?=
 =?us-ascii?Q?K9Q30JW+ywHQTNm5Q8G9S4fnixVxxYFQxxzRZGImVACE95jq4ae+RsC5KOh+?=
 =?us-ascii?Q?STTrkH8iBFuPruaFRTDJm/gihaNs2382kfjXsFdrLMZA2qVFU61BuNDhAQvM?=
 =?us-ascii?Q?REOKXY73RSSjwZuSBR4UIq8Za3doFmC9LWsOgrRYVv/5aEl5uMOAeEy/+m9J?=
 =?us-ascii?Q?v8jK60t5rBUfvCSNoDCDyvuoTiwieUh5we5kizbDVhmZgEX0/sNhgV6ichOw?=
 =?us-ascii?Q?1hbj9ctSGyyaunGGY2vtoksWlGwQayvf5HTqFfVzO9tP0wA6OLI2pyJFpoIC?=
 =?us-ascii?Q?9dSMcZjeS6I6Q/xMsxA+nousBQoV+tAx5TA96q7RLEGWQWktacIC+sFuYX+0?=
 =?us-ascii?Q?sH2jocTsswSjqr7RqDa0QVg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vpDMQrqT4LI3o+SnuUtFzJ+fwMGnfKSOp87HLyjryCpWRTu9muErYNHGLa05?=
 =?us-ascii?Q?Kh5cnNz3LLQmx4r52hsAVDA9kn/UZb6HDVXy3UZIUIFuGYn2umItzX8w/+h6?=
 =?us-ascii?Q?xhRhWXP+vgxPREGk9BHPZkN3p7L5bqxgiocLNLfrvxnDnwUrvJzRQuSU5cdT?=
 =?us-ascii?Q?q2LmlPGk1KDGxMKncNI/2abMaH/Xi/3HKrlSuDmy+rAj6lu82VeoI3ZwiPmb?=
 =?us-ascii?Q?d+DKASQ+xkadajSYvYLkdqmwA53fczh4kjagDNUmZr8jdfD2R87jTwELmVXJ?=
 =?us-ascii?Q?YDcbzf0hczKutlJLpUJULXYY+6hdBmJhf3+oF7MwXxNT/JkyRXC2/jGwSpbp?=
 =?us-ascii?Q?S170aduTfemZbEU3FGXTxRjpkFmbv1l7QRs/2RxBw9wBvDu0V/SmkmUub399?=
 =?us-ascii?Q?5N/q6orNkki4wOJQ/yL2gM4QWTBtKxhSuGXS1l1SlNj57OWG+3TzUwa1ThVw?=
 =?us-ascii?Q?QUyPDnd+DmmOUsIHmtg75W2tIGJTXwkff7o3hWUQc5h3agw6jNb9ijwNc7MS?=
 =?us-ascii?Q?WKqjat6tFppkaJf9C1Os8rzSmDCEWPVQzxqgfFLJwAhcZu2CfRjK+TtK9d/r?=
 =?us-ascii?Q?R23YL3y4MwUtdCa1QpVybMe6CQBDn8dmABjKgo6ev7aJMrKL5ku3yxjoL8ES?=
 =?us-ascii?Q?SWMAyzCKg2qq5A2YIwnOImsrHSrlUd/7jvgAG0qtf3bs9R+6vplFEOwFkynh?=
 =?us-ascii?Q?FlfHF6iizqKsMcgOrlT/7D2EdFb5Z9Od6V49o1p7E8roXbmMIqIia8LCfqNt?=
 =?us-ascii?Q?+tkQ3U9ykw65ntE8+zl8uUG5Ju0ItJTZOgY4mG9V6cteTlN1qzfqlnFr7SGY?=
 =?us-ascii?Q?egx9I7yddu8EZDhKxO4xQXOnhFCcg8MKFEKcOjup9fZmrv0wSDtmiTtaT1Yt?=
 =?us-ascii?Q?9xJ1v+dHN3k5P+ODb4d+Lm1BZrxISJigNjbcUED/xl/OUNaKM6FlFBgrNf7M?=
 =?us-ascii?Q?L6AZPTDsR42VDzozBtCyEPUq3xd3PKNvgPKUb5L5JYKHMaYJdpfSUx0JOpVe?=
 =?us-ascii?Q?GOKc/Kw7Bu+AMncONDfcxKdy9EROg7LNJn1rY3qwofsISphvwylymoWfUR0B?=
 =?us-ascii?Q?d/YuAXuat3XbKzQqsJ2VKqM/KHXY/GcQ0rRhB6c00s31WNTm1O2RrXE/d3t9?=
 =?us-ascii?Q?tgY4voCzs62CKCqjU+IcfrmcsgW5+8owsPdM9NPqqdZmTYZd3ar+KLqQWLy/?=
 =?us-ascii?Q?AEKrtFR/UDgpMAdklTLvPXb5kyEzN5WioTZdibXOQLwyxKRiZ3wKeuP842al?=
 =?us-ascii?Q?IMQJmW0rNNBXNww/M3mwSyUhLGIf5vvpV1zJFlBTIh/s3W2E+CZ477Vzzcnv?=
 =?us-ascii?Q?Ie29NgQc22wEgR7Bq+Aq134mpJ3pSUNywYroNl5LTSX2bimTHAV+XQiG7ZHM?=
 =?us-ascii?Q?Ag5wSTZyispo9e7iTuxUbrqQdapfvcI56AnNv1hpQVHsFVmpAQb8IKlfm95l?=
 =?us-ascii?Q?JYcYyKuRoHNUVbvxzoZpMJy+gTJIDNyT0lAYPIpilhiMYbigbOo7Rp1YrZPB?=
 =?us-ascii?Q?GzcIgFmlqkzbFvG2wdwYMAe1trGa7C/DE+Qn3WaDFQqsd7PYOClgzFaFJ/Rb?=
 =?us-ascii?Q?X4OYDauxUt4pmStKccBAbjyzkJCqftYE+tUpmA2CZvI8JC/m99DbzKUMUb2Y?=
 =?us-ascii?Q?9w9V4/S/SsPPq5pi5MvyiofVuMFhipkYrrn+U21m7WboUzOfn6MzlEyo+fyy?=
 =?us-ascii?Q?aPCSuqtPziJW48wxHtCrD7K2NSWQa8i09y7hP169gPbVAn6poATIpqEOWK+6?=
 =?us-ascii?Q?3s9334jBIi3neFWFzu4C6Udz3JsFoKs=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0620be47-1b53-4a2f-cfda-08de57442b41
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2026 10:19:02.7917 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: COsHebh0RtCiRs+cC3ELlu7nw3T+xcbTMusJVb5OslN8+gmJLWrJxELoFHEP3vEvlMdBq1jyhPbwQvyvlPORGZlWqG/lZ3cJWgdvCGTz9fQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6750
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768817963; x=1800353963;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XYocX6AKEDy8TZaMsLAdQ0Yr3jej+jvXPQIdSWEbSNc=;
 b=AgZVTUaAYr1QBZPyDWHSa1irafRZysitN+4UWyUW/mlJ61UXbgDBVkxk
 FGIOfqJMFyRtJvBnsyNC3UbzORB+bmJSC8AZcIlMOllFVQ5F5aAlHv08E
 mKVv+lrYAfERk0md+5xeESGwW6v6Le4zS2rXa3+d8UmoafI+6XEKjglm4
 csRWBmCllfoRRbzR8lk1aky+WOzVQlec5UHXvPsrR5h8C+BMPE9knS05s
 gvhYGMF0sbvuO489mg0CwnzJJ1yIge2wjdHEtD3vxQ6FM7MnB2sUqzPLr
 yLaL+P+vWwBkFRadkyqfdC2Zs6Pda0d352ScunKdRKmz+eB7RPzQsvq8i
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AgZVTUaA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/3] igb: prepare for RSS
 key get/set support
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



> -----Original Message-----
> From: Takashi Kozu <takkozu@amazon.com>
> Sent: Monday, January 19, 2026 9:45 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> andrew+netdev@lunn.ch; davem@davemloft.net; edumazet@google.com;
> kuba@kernel.org; pabeni@redhat.com; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; pmenzel@molgen.mpg.de; Kwapulinski,
> Piotr <piotr.kwapulinski@intel.com>; Takashi Kozu <takkozu@amazon.com>
> Subject: [PATCH iwl-next v3 1/3] igb: prepare for RSS key get/set
> support
>=20
> Store the RSS key inside struct igb_adapter and introduce the
> igb_write_rss_key() helper function. This allows the driver to program
> the E1000 registers using a persistent RSS key, instead of using a
> stack-local buffer in igb_setup_mrqc().
>=20
> Signed-off-by: Takashi Kozu <takkozu@amazon.com>
> ---
>  drivers/net/ethernet/intel/igb/igb.h         |  3 +++
>  drivers/net/ethernet/intel/igb/igb_ethtool.c | 21
> ++++++++++++++++++++
>  drivers/net/ethernet/intel/igb/igb_main.c    |  8 ++++----
>  3 files changed, 28 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igb/igb.h
> b/drivers/net/ethernet/intel/igb/igb.h
> index 0fff1df81b7b..8c9b02058cec 100644
> --- a/drivers/net/ethernet/intel/igb/igb.h
> +++ b/drivers/net/ethernet/intel/igb/igb.h
> @@ -495,6 +495,7 @@ struct hwmon_buff {
>  #define IGB_N_PEROUT	2
>  #define IGB_N_SDP	4
>  #define IGB_RETA_SIZE	128
> +#define IGB_RSS_KEY_SIZE	40
>=20
>  enum igb_filter_match_flags {
>  	IGB_FILTER_FLAG_ETHER_TYPE =3D 0x1,
> @@ -655,6 +656,7 @@ struct igb_adapter {
>  	struct i2c_client *i2c_client;
>  	u32 rss_indir_tbl_init;
>  	u8 rss_indir_tbl[IGB_RETA_SIZE];
> +	u8 rss_key[IGB_RSS_KEY_SIZE];
>=20
>  	unsigned long link_check_timeout;
>  	int copper_tries;
> @@ -735,6 +737,7 @@ void igb_down(struct igb_adapter *);  void
> igb_reinit_locked(struct igb_adapter *);  void igb_reset(struct
> igb_adapter *);  int igb_reinit_queues(struct igb_adapter *);
> +void igb_write_rss_key(struct igb_adapter *adapter);
>  void igb_write_rss_indir_tbl(struct igb_adapter *);  int
> igb_set_spd_dplx(struct igb_adapter *, u32, u8);  int
> igb_setup_tx_resources(struct igb_ring *); diff --git
> a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index 10e2445e0ded..5107b0de4fa3 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> @@ -3016,6 +3016,27 @@ static int igb_set_rxnfc(struct net_device
> *dev, struct ethtool_rxnfc *cmd)
>  	return ret;
>  }
>=20
> +/**
> + * igb_write_rss_key - Program the RSS key into device registers
> + * @adapter: board private structure
> + *
> + * Write the RSS key stored in adapter->rss_key to the E1000 hardware
> registers.
> + * Each 32-bit chunk of the key is read using get_unaligned_le32()
> and
> +written
> + * to the appropriate register.
> + */
> +void igb_write_rss_key(struct igb_adapter *adapter) {
Opening brace placement violates kernel coding style. For functions,=20
the opening brace should be on the next line, not on the same line as the f=
unction declaration.
Or is it my mail-client issue?=20

> +	ASSERT_RTNL();
> +
> +	struct e1000_hw *hw =3D &adapter->hw;
Declarations should be at the start of the block.
I think ASSERT_RTNL(); can be moved down safely?


> +
> +	for (int i =3D 0; i < IGB_RSS_KEY_SIZE / 4; i++) {
> +		u32 val =3D get_unaligned_le32(&adapter->rss_key[i * 4]);
> +
> +		wr32(E1000_RSSRK(i), val);
> +	}
> +}
> +
>  static int igb_get_eee(struct net_device *netdev, struct ethtool_keee
> *edata)  {
>  	struct igb_adapter *adapter =3D netdev_priv(netdev); diff --git
> a/drivers/net/ethernet/intel/igb/igb_main.c
> b/drivers/net/ethernet/intel/igb/igb_main.c
> index 85f9589cc568..568f491053ce 100644

...

--
> 2.52.0

