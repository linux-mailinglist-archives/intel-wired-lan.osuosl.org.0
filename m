Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48197AC0056
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 01:06:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED44A81492;
	Wed, 21 May 2025 23:06:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sIxCD8cMBi10; Wed, 21 May 2025 23:06:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D8394815CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747868800;
	bh=H2zIlClWrTarnawoz5vwyD6v410FXNSN0lVXASDWDD8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bDoCHv4zaCx49qhjpAmgaiSv7MXidRE7w2ZAu/L/L7cYRiW7uo9s8gF63Bm2YkrjB
	 aoKww3pNjf613HJW+tYqIxMauUrRCAoaOt3LRFlj7DmsCezGkFw9psRn8Q6UG+vLPD
	 /Hyr5jel/svrtAqrKh4m0TXdpBVguwSYJIOxVAPeoSZR6rV9yfzqBmLVxXVaYuGIJM
	 o7wlAv/3WW4tnck8RuhvgK7hTDevqHhciOV6vBBufwNb5T8Qi/rO/0z/93UHlazByI
	 LTlox6zCEQxrUL7QrhGdnw+Nr6c7NKdadzc8csnSW/a3i3LZ/TfY+Ispd4kqx5h/LM
	 HCZp9Fm8pCZRQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D8394815CD;
	Wed, 21 May 2025 23:06:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4C74B17D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 23:06:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 31F1340527
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 23:06:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gxHzHt4tbPEA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 May 2025 23:06:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 900C740C04
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 900C740C04
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 900C740C04
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 23:06:38 +0000 (UTC)
X-CSE-ConnectionGUID: JYVF/q0OSay8HC/df8vFzg==
X-CSE-MsgGUID: V0oxUzTJQSCzJdACuKBp0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="49861603"
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="49861603"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 16:06:38 -0700
X-CSE-ConnectionGUID: /zBH7Bo+RkWLdMW6GJYaAA==
X-CSE-MsgGUID: 3iXnbp7eSPOfMlB7CdY2sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="140063237"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 16:06:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 21 May 2025 16:06:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 21 May 2025 16:06:37 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 21 May 2025 16:06:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XAA089qwMPjLnQsXUpeNyfyAJkKgKPaBQRLHcsN4iRod3nHxjOp6bzWweUoRbnao9gabCkDMClGGb8ohedguo+HShRrZ3gFvWycJjUEX7u4Hg7cqk9yCiVNdIjHmfuM0JbJerIXdk5sT5cCpkHjaV2orrz97U5rsOo4VIX+VzzkkUBVycViRar1QzuFKvDsUsw2/W1qGRTlPnZuKDrh1/eJE2MzvjTNFFNBh9msOs2xRo1dM4fGl9s5/nKb34BjJ53/cUqBjOpRS+BMKpFjaxHsqYPISKJQGZqd+375Dkgg7+1GI/bG0w8DQ1qnSqzDn/8F09s0Jxvdek9cwIxTEtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H2zIlClWrTarnawoz5vwyD6v410FXNSN0lVXASDWDD8=;
 b=vrIeGOXvu5FRjYqWRi0LnUVpXselmrHFXkk7/09St6b+atLEeh3V5yJfCy9r+v/pjUSugybOFiHlwZAwVimfh0dQsZ0guQvHtqriG4nQcP36dSnRt2hhwyuOc1+RbKdJuriGHSektLdiVhxuAmSuqXDSvV0DEGn8T8oAIMOgTfvp7+jl2Z5G4sHVtTerJ7RXF5FT/w2u+uG9gYI1PEdwnngVBSKGeHE/VYAXnwRnuKdX+UCt/qHDkDSqjmqvuPVVyYUJh7MOF7UzvlGdv/Cydhbezu3vqUAZJQDZrN+4j6x6k8Ih6ULR5s/gMcshDg4vvTALj9ABTOBbJkqqSEQgBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by DM4PR11MB6478.namprd11.prod.outlook.com (2603:10b6:8:89::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.24; Wed, 21 May
 2025 23:06:35 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%6]) with mapi id 15.20.8746.030; Wed, 21 May 2025
 23:06:35 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Olech, Milena"
 <milena.olech@intel.com>, "Nadezhdin, Anton" <anton.nadezhdin@intel.com>,
 "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 6/9] idpf: add rss_data
 field to RSS function parameters
Thread-Index: AQHbwGNaaw25OSsuBk6RjFQcpgJpjrPdxZ0A
Date: Wed, 21 May 2025 23:06:35 +0000
Message-ID: <SJ1PR11MB6297076F36FAA1C899A14F309B9EA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250508215013.32668-1-pavan.kumar.linga@intel.com>
 <20250508215013.32668-7-pavan.kumar.linga@intel.com>
In-Reply-To: <20250508215013.32668-7-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|DM4PR11MB6478:EE_
x-ms-office365-filtering-correlation-id: 2b6e4e1c-db77-4f9b-b644-08dd98bc228e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?zRatyYEmyY1rITMGcUlHLXIP9hqUlGfWWfmuzZR/UfWmASdB2aZtJh9dBBQg?=
 =?us-ascii?Q?yCR5Mj/l5k+MSfbsQa/Ctpr+aYWExqXX7905OMC79j6Y5VCtZwWLe1f1QOmf?=
 =?us-ascii?Q?B2CwvOHf69o4GJOWIUhGC08xmCuW+UHMgrWYg++VS6c3Is+LJFCghC7aEv9E?=
 =?us-ascii?Q?el0O6D7lxjUREOj/er0j5pib/lHjqnyWoD2ML9D34KHXXR5aw/DvEfKcedqY?=
 =?us-ascii?Q?4qA7IXMQLbbvRy73XhNFLnH/u2uCsf/KZmqbBPTE36VtNrHNI9OrXup9F5m2?=
 =?us-ascii?Q?mx9Rj3BP7BDgvlcKyt2KiGTQ++rjLnmreNQDJezAmdugcXuz6yqMOjPbq3Ub?=
 =?us-ascii?Q?J3C6n1uZ8zWUp56HGHt7zfpEpSHrixes9OzKIE+exgqmIdjq8zAcT0a6n+Bh?=
 =?us-ascii?Q?49o63v1yGwRkZKr27f3iG9Bv+aFoODjdnQAkC2lFiqQ+NBvcOEq/3vHkmXKa?=
 =?us-ascii?Q?E0wbo5p6Vil7NjMT8WEA0HX7qiAYjPuCXNz1R7YVSqTBn9i72GLXcxhSQ2x7?=
 =?us-ascii?Q?Bqe2lPmULa9LnW2cPK88Gop6monWRsKonnVrjh96cQ4y2Demr1NR4NkakRpu?=
 =?us-ascii?Q?D3tINUs0CK92E4bKlQAmj6COFP4jMO1mdz/iLDclUqcjmoxJvyXBF8CsPK9O?=
 =?us-ascii?Q?lvXQhEX8bbbsZHRG2G2nCcql6rnOZKvicgRkMQgBYXLmIA/KeXXHk1BgVXrV?=
 =?us-ascii?Q?ONSO/4Xi54OEDyrGZ6ktx/cO2iqoxpyDX689hC0XwdQ8sMFnO+8u+owYJ5RC?=
 =?us-ascii?Q?zGuGw74oc0c618UxLdT1MgT/3L/cX6bjpwR6MZuW9cK4zgy8KmhEdibrc/Fd?=
 =?us-ascii?Q?ZhwWuLCLhbgui4P5sTWk0fCseE2f404lPDMV6QUSQNk08sbcGlCZxceJ25pZ?=
 =?us-ascii?Q?j2qt9rK82hD/M803dYI4qZSxYTl32bCmz48exrJ7N1OnjLuRsdTkuFyJ2tQb?=
 =?us-ascii?Q?4HzgXorA6ZubzZ8qxHmbvt9zjGc580qLihWq9v1lIjbeMlcxui1kGgbl5Cc4?=
 =?us-ascii?Q?eGoauKok4tkDpx4hcFPo3S0eVfe6agbAJKc8eMsg5PKxywjaMDF2DOq25Dlj?=
 =?us-ascii?Q?PpxN+xG5dYX7E7FcgVDEReHm4JKzkVE2XzI/Kpxs1gB1MkBNwYN1Zfb/mTy9?=
 =?us-ascii?Q?v5auqKelPg6G0/tHjjkHIoPIffzfZRKEyRcsNpKX+I6QEUrnTaHfhXpOVsGs?=
 =?us-ascii?Q?SSp1zUMF+pHWY2iMk+krBJf9ecUooO+FaeyQHmtiZ3XygfXMGeFWdWJNlRjR?=
 =?us-ascii?Q?Y6MeyWX+oOjtam3ifS64BbC98nLGuE0Vn8ha+IRsN0IOppJx1ZsH6eDus3eD?=
 =?us-ascii?Q?9FlzvRxvMrHKts+VcxPM/nYW/VoQu+EiA14EYY+BbyWmQ7QUx0zprzYzfanv?=
 =?us-ascii?Q?o8RVOtXyimhii5nyQCCjdP3aW8bWUjdeGzCF4BZiQlpHlO3RAtZ4AWT9BEL+?=
 =?us-ascii?Q?4gihsMvMR52SYZ8IzFATlqOt0tIRk8T0EL8clAtlLJ1dTv+nPSCsN2IkW4Hd?=
 =?us-ascii?Q?jDo6Zb3jR6oJht4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fnM9eR/4XDVsqCmvi29gO5TbTlAM0bYYjdnsluG1wTJMao2HVpbnaLiIJN5M?=
 =?us-ascii?Q?Q5D+fsjKwkRmm9zV2OjuDJU/CzjE8B95Luad16H9zdOHBLwxmyZrUXDtK1+9?=
 =?us-ascii?Q?oXjQ8qnxzDtpC1RUTdyvLf5B9YrkiG/0CJ5mK63BGGr10uGZFSPvVvuqoM3s?=
 =?us-ascii?Q?RUNHCd/sDmqtz1PQHTlksaBNscx58rD9OJGmjVPkuxitSYiPC8bAlx2GzS+U?=
 =?us-ascii?Q?UXu118YNqzAnutKRiRx4q0QV6UQizLFBg9WaKz+Pe3U5UvGxApTxYOc18hUK?=
 =?us-ascii?Q?e03ZYAMO8MG/+XvYCxa2L5+WN6F2pU1XsptRFPsd4lk/vgxq2XlMCh1kJCaV?=
 =?us-ascii?Q?WI3IScO5JiwVuniQqS4UTFwyTGdxHSbi501U0uQEjrs8maQquKC7BLmO2sR0?=
 =?us-ascii?Q?qTYyG+h99KaMl7GL8gnkbApp5T8bxOH6uuNNTQ+9WNMSheheO5umN0wens1W?=
 =?us-ascii?Q?YRYdR+T63qYnbZPWtt9qKlD/0jkBdqep5ZpRcJEJ4JXJBOxS8vz0hs2B2f9u?=
 =?us-ascii?Q?THE3UM9G8KP7a3mJo9CMo05XLW5qpfqkPKUn5X0aHrT8grcl/EC7PzGIJQ0u?=
 =?us-ascii?Q?PCCYIIq1JL+89GKOyBaG1xYH1s/bEtwslcx4yJ3lqhiWIzTfYg9guYRke77u?=
 =?us-ascii?Q?O10MdKnhPOEqEr8ce1PN1xC52EJrMobpxU9oFDpVKI14KsLsOkXMz2j8qCbv?=
 =?us-ascii?Q?3ByUXcyCqSo3Q/NfoAd9ZdqWdd/k/uijxxpa3Sev7SMn2KdEKvWOm3fegwqx?=
 =?us-ascii?Q?lNiqUKu/ll6YaeJBXshRKjPl39zGHlfofiNdSCgjopaQwy4LR/ISpE3idq19?=
 =?us-ascii?Q?IAeuzkv5xUylBdVqprr3EscMR/hDg7pfENFuobjQImbcaC3qkfsX22DI3wOo?=
 =?us-ascii?Q?MXFlWUBAeHIuooTulxRVj513bbzED8FZ70LOnyx64Ex+u+4CGdOU1vW/Zrsc?=
 =?us-ascii?Q?rJ1YmOvW8CQ+IJ9FlpS1j8aSnzxKbmDLMWj/+fwcC4QLCdweEjyizuXKhsiB?=
 =?us-ascii?Q?n/aojb+Bm6k407q9LvA+dDIfbMfxYUiWDTgZapQMXJ+HfzYzikkA7EmT+jTG?=
 =?us-ascii?Q?Uu60rAPCW7FlwQcWL4D0ub5+zh22QE5WhBl5LbdF1qPsECEBKRvWg0nGgWMm?=
 =?us-ascii?Q?2nW1ygZRUsSsxhLRn36bTm/1Ptp64NYj3ZWSvAJiWlI7g6YHpj0vKxBEjNpm?=
 =?us-ascii?Q?S9ziu+m2ZImUEF5N5LYyYIUn1VQM7iXKC0q3Qh5LoxUHG/7X+oeWbEJrEMAI?=
 =?us-ascii?Q?jMeHEupcxxTTGHyxkQSp5IptGjzSWctPNS75Zx0mEaLBxUqInf0MiaKtMQcd?=
 =?us-ascii?Q?EOhDUjuOjVFx/bQCB6GEHUiDI2FFf38ABcAbFhQSZFA1PNHS5SV7VIHq6vCI?=
 =?us-ascii?Q?bE/1q0o+Rj/IR0NwhJ2/B2dNt/RjCuGMJG39H4RISGK2DMhenYEPiq0dCzCc?=
 =?us-ascii?Q?0tSOCHALyl0cO0XRLZVJw+auGTYdr1JksEGWxLO7n/Mq8ZY4v4hjwNzP+OW4?=
 =?us-ascii?Q?CXHe2qzYKBw939CPZS9x5xtGrE0pgPOmA0QvI4OPinkwva5EA5jrWcl2siVc?=
 =?us-ascii?Q?BQ3y6mS11RoMOmYbM7+EdAuuhCF5f11cEnsFWD78?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b6e4e1c-db77-4f9b-b644-08dd98bc228e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2025 23:06:35.7350 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GPSq4CWXQBIezt4IIJuctzHmJfqFwihZb6g1zTfqZY+lh3YDmHa3Qf4L+6nwWDyFSjpf4hg0kXdfXmsLkO3LMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6478
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747868799; x=1779404799;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H2zIlClWrTarnawoz5vwyD6v410FXNSN0lVXASDWDD8=;
 b=Z7lwAxbsvSq+zSP0E4eC+/CEN+Xs/hXWxS+RGKkARGpI/HrqmJ+pAnQ4
 O2zWR1TqCcUKKS4fVYUnDCMy44AvFP1/cLTAotXKv2lJIo5UIikVax5c/
 8QLqsPUGARzQwWm4cxRvdW0F4FDFm3wPI4h0phaGpy+OiDHXdpS6/3ZAo
 BLhul9Rxv9hxfxNKWiUltqQlOpgwcD8iyKVKUK5AlD8bVXm86U8BOPifX
 7FYzJx2OOa9k/i3Gd3O0VbuTg0IyxhmVqi5KCG8hkMOnH21HuSFzUO7Ul
 geCumUxIhALYhNUDj62s4dBUqKw9Nb2sLtTpn40eDYiei0QD55GSqHr5H
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z7lwAxbs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 6/9] idpf: add rss_data
 field to RSS function parameters
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Pavan Kumar Linga
> Sent: Thursday, May 8, 2025 2:50 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Olech, Milena <milena.olech@intel.com>;
> Nadezhdin, Anton <anton.nadezhdin@intel.com>; Linga, Pavan Kumar
> <pavan.kumar.linga@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 6/9] idpf: add rss_data fie=
ld to
> RSS function parameters
>=20
> Retrieve rss_data field of vport just once and pass it to RSS related fun=
ctions
> instead of retrieving it in each function.
>=20
> While at it, update s/rss/RSS in the RSS function doc comments.
>=20
> Reviewed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> ---
> 2.43.0

Tested-by: Samuel Salin <Samuel.salin@intel.com>
