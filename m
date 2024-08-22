Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1998195B580
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2024 14:57:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A63960B25;
	Thu, 22 Aug 2024 12:57:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nmo4ofVzVXyC; Thu, 22 Aug 2024 12:57:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2129060B54
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724331430;
	bh=zyitgmYEsJpNhH4EaLnvGexqNtt1mzMay1xlY7uROUE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pqmm6vQat7cLJkMlBe8IMgZt8+f5MdtPRL7SbNf9A4Tz1gwA/fczT/PGX2qX6x6uA
	 Zd672WFvU8RPa/RPVyfqY5etLzdJ1DrhbTMigZfpAI7x2AmuHZRVGLv2rpFtJisiNt
	 +qhyZZ2lgbtn/j/SSoRiTnmfgfpdDuYIa10lz45X31sa1YqGBKvndEz4AmjgFl4zx1
	 jlvLPNDFAo7G27aJSSjR7SeMcBd4OKhgLlVYF5arElxTMXuVK0RkowaN5i8IOndN7i
	 liS7C/xlnRuHBCU93jG+0iFgf4rzz98NfnsAXDsASGym8ySRETFQ15LqxofApaoe6B
	 zZnokvSy+ptyA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2129060B54;
	Thu, 22 Aug 2024 12:57:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7C0DC1BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 12:57:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 682C8606F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 12:57:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GkxSU9Nk1xip for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2024 12:57:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7F8EC60655
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F8EC60655
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7F8EC60655
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 12:57:06 +0000 (UTC)
X-CSE-ConnectionGUID: 4Y0yRv1ZSJOFXIxYmcU9Kg==
X-CSE-MsgGUID: VNS8k+a8QvKFcq/Xh7OoJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="22922018"
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="22922018"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 05:57:06 -0700
X-CSE-ConnectionGUID: oLAuGm9cTqyRV2un1Ty6VQ==
X-CSE-MsgGUID: csH7tBYsT6KRAi5l0i5wRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="84605416"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 05:57:05 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 05:57:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 05:57:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 05:57:04 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 05:57:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m5DsnuE+xv22Svcj2BBmqWQWQtcbLFNZ/TAwVMsaeB/szFW+NE69kFGqjdHI+8y5WHawvOHiVV9zGrw5yL/OkLp2TLYimcq5IKQpcz8qTCXzDjYtFPod8DkDhlYSdOsc4gJfCfaY4KgkDEjm3LyjBZlDj4XpNtca0Ihw9rn80CWrGUEvmPJCwco//WHalKofVb7Wgqz6tag+g/86M8Knj9XIUl/KX1A3fBfwR9B3iQ+yfOsdH1YUT8jocDRqXBvCTyDXsb1YwS+zIBs+h/bhR6gyPTYgtcg38QL1SE1z37RtbQ6fizGn7qeQvcHq/SNpJiOd9EBy7FSM71LGSyrRZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zyitgmYEsJpNhH4EaLnvGexqNtt1mzMay1xlY7uROUE=;
 b=XzH0qpZ8uhyZ5mfZA/7emj+GPAiQ3uL5MkjXUaKTgZagzrYsE/ygdNbfaGLOkogxw0H9uYfpev5x0ZlfOK1bLT87V76nDPUbvWMAFth/oXBLwswoKSwoM9I/BCSca+e4ZaVVWTVhV8uGMPLfHZLjL3wxAgMBIb0RFEp0pN0vEzJPgMcMQd35XhNulhMrcX43NZ0xMa3ZUui/r3dFJaPsLPtwjIUblTh6tIKR35RqymV4rVoaq6KaQ0eaVHLMF4wzTHdJc7X+lct8ixWhKCvDOZtW4VecHaIEXl7V7j+ocv99G932lMZgCxIKzH4A6sIfgPiwwxQwnVZ8wYz4EcIb0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by PH8PR11MB6879.namprd11.prod.outlook.com (2603:10b6:510:229::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Thu, 22 Aug
 2024 12:57:02 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%3]) with mapi id 15.20.7875.018; Thu, 22 Aug 2024
 12:57:02 +0000
Date: Thu, 22 Aug 2024 14:56:50 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <Zsc1ktk/oX+LpFxl@lzaremba-mobl.ger.corp.intel.com>
References: <20240819100606.15383-1-larysa.zaremba@intel.com>
 <20240819100606.15383-5-larysa.zaremba@intel.com>
 <ZsciSbsTeIRGc1dZ@boxer>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZsciSbsTeIRGc1dZ@boxer>
X-ClientProxiedBy: ZR2P278CA0020.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:46::6) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|PH8PR11MB6879:EE_
X-MS-Office365-Filtering-Correlation-Id: bc322c91-b47f-4948-de49-08dcc2a9ea8f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ZgBb+nFTQHDBwBbTZrnk9PMEl0LonpC1lT4Qz4yky2HlKWSyhEJO8Kbvpwyf?=
 =?us-ascii?Q?uOJCDFDUEYbZpLgmRCF8srEwz8TzfcyNqetRWEENo1KBTUX3XNzoIfZ7IGWP?=
 =?us-ascii?Q?WJ2Ogt5ZIOVH5D+Mf57xhuiGfK+kKi7HbiJNXCFKsEcBr6fouYgDyS2kFvOX?=
 =?us-ascii?Q?GkoCfiFUfBcAA1bDaWz/ZZJPPZ+PyWS6B6wQx3ro/NgKGsn6Owm5skdQACwH?=
 =?us-ascii?Q?p2AgazqMQ1vINp462+lpMkr09LoxdDFj4v3ofmgE+x7VKeKiBBCe1cajfJdQ?=
 =?us-ascii?Q?k1F4T+t2RDCIOsyA8Xl5LipuN2k+iDHElIzxG7KJSGMiK/49Sg5Be/0/rB+U?=
 =?us-ascii?Q?4uwbOKVgGEVn2yvu+rz+LGMyHbY1pcFvJkX3MVugCfmxYDRyJvPP2sipyGq8?=
 =?us-ascii?Q?wq4EVPgKsFUW0DsNE+XtvqgzNhz+MHA3rBfnh1be0lpNF6LnrnIbUHd1PL11?=
 =?us-ascii?Q?C0WW9DHqQHfN3K7i8EBGZDky2DJZnQP0L8J6dr2h9lCwT+xQoCwmI/t5pCuR?=
 =?us-ascii?Q?OG2qJEh/3Y6PDPMAr3jUINZX0QTg9RdJsd26JsE1TgzUSqIA7qFxigCuvj8R?=
 =?us-ascii?Q?Oc2KkvUf3tll9fvk49PP1ywlFs4V1ZpW/x21dfgjxDb/esCIr/U85tDk52YS?=
 =?us-ascii?Q?FXmBHdY2vnDXQfIaRM/8kpAF9ymA8zMzGDxwOep1WsPNPJkt07+V88AHT6lW?=
 =?us-ascii?Q?xsmv8wrPqaXIhNNAXlVNpWG0NvCzswGYBlYpejalDkMIY2S7lhRu6EALP33Z?=
 =?us-ascii?Q?wz4CKsuTFZOmd2QFztgrhYgBNkjuwIkwzdNgvyma2XObXRDBM/tEAXMDKqM6?=
 =?us-ascii?Q?b3nEBtz2Hv20vtaqoG2kLyMob+igI4iEq4GEmSb8zaK8dg7p7bZU+0DhNdje?=
 =?us-ascii?Q?tLqIIGSqfJMVqetv/RtZ24GGhWJKTzJtIhYdDQD108Y6L39UT4pllzMsTbSZ?=
 =?us-ascii?Q?Vndt+NnNvPDR11fmrJ9xhmcSZDA33wZKnQ/EfTr0B2XfDA7Vd4jVcfODW70k?=
 =?us-ascii?Q?mN1OWgk6Q8/6dtaqngpVSlOCyqWVsMKtyo852AeWNjooeGQuHRZ9xb9FeqHP?=
 =?us-ascii?Q?/qDUNXL6BJt38ts9POQWNWkmqwojgF46GbXLmUpmfmB0i8z2c8wNb2BfvK7O?=
 =?us-ascii?Q?1aoEtCdt56UoLBQ4cAPYLH94hnwRhx2ZVJisH9JXQhcKo1xB/k5sEE1yx2iD?=
 =?us-ascii?Q?ea8VblRWt0fRTOMUV+jwHtKFKcl0n7BFClBgwknVlKqgtCK3xLYTVLVw0xjS?=
 =?us-ascii?Q?QKbfWf0CPbLFnzoNys7r4DpflAuuc3otPQKRhpVMTJNeygyG320HXhLOX47o?=
 =?us-ascii?Q?uNo3w0XRJXXsThIochEPXLKjYNpClIP7Si+ZxGHyZkVw3g=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ohioJC7NLbS87cCF31KsEkzR4jReCHsta+G74wa88R8BHBuUH7IbC3tEc03r?=
 =?us-ascii?Q?fvzHqhmZG70+5PWAY4C5LW9+PyYP8XeU4PCzBgaHrZ43M0fRPOB3PteVUfy+?=
 =?us-ascii?Q?SSMY0N+K3/z5ZkZW1WP/fFF1uUsmmCriLrfy3M4iKKk2JvNXkLuPoUgOThX+?=
 =?us-ascii?Q?cWkSV9gbLExRG1OH0xTIjUwMhswrkKHeXAq0nL4hD4MC1Rbz8jQ82MOYyWG2?=
 =?us-ascii?Q?bW60WzxL/rA7zbPPHWWU/R8OgirlXe8sj1xDk9y9nsMWbBksDGi4TJe0YFA5?=
 =?us-ascii?Q?lhzFB0aqjv07Nzgwe3rJPfTX7tYPDLPE3+4ogMglTPh+yeF2cVFUQpzEmj4y?=
 =?us-ascii?Q?qoxvo0mDGMZ7qIVhZHDalmGWRyEraehjNLt7fhGcGYqMUc5CO0B5cGykKzCN?=
 =?us-ascii?Q?H/RFgZL4GMkuS9Tk9ZZK9oJDKkOlUlya/ulw6oOPCtsiDsSOPppoToDOPJ6A?=
 =?us-ascii?Q?dunlRC70AM1xA/VPPfsYM0tdl/KYivPtGr/Dd2el58fX2IEFfD3+5akM1Olr?=
 =?us-ascii?Q?7vKS8opYR2YTyFrBfIa9R/eulijTX2gx3p4MVt+Ym86aen6cqlLV8xTX4Y4K?=
 =?us-ascii?Q?WKGL1DI7ifnUTEj0hjElCcUx1FWoZuyMrfbzFU7DQEWv8J4WyRL56Gr9tDMR?=
 =?us-ascii?Q?zyH8XYVwnHrEyJDp4wg+M0a8QzcRxqn4QpNFrlD2MFjE7Sb5EU0r4dbH9HNk?=
 =?us-ascii?Q?jqUINcx1DLQJtyCeVpf9YAHMzBgMua+8ubyMvaSpOmWgTbMnsEb9PwxmGOkV?=
 =?us-ascii?Q?jEIuRvErLuz8OPYjCIh2oph06JLBNQklGtdDVtVsPaxPDOaq2sj7tK8XdDE5?=
 =?us-ascii?Q?DoCk29tp65D6j1S+KmFBwJoNg8cgWGPpUcNzQWKUdYiO1FV/XP/5oyPlY2Xw?=
 =?us-ascii?Q?yT4f2javkAWRQegrhrrjeuWWyYqF4ki6K5OnK4o6fCngreb27TOHylPCnWvp?=
 =?us-ascii?Q?mQk+SBE/RZsEladI3noHkLn+V0EdJhzhx1lQBZlCxQJT6MzTju+Omzgs+YvG?=
 =?us-ascii?Q?quVEgh/S7kkmPFfblkIGJn1wsadirdScpSGC8ziPifP+iY+EQAkIUZY2kEaW?=
 =?us-ascii?Q?20hauPafzfSFhK+/wkFxdcScBF/0DTnKxlxLrv88SzEiSZtGC3WU3t7lG/wO?=
 =?us-ascii?Q?RFH5XF+gjfVKu+wzFAMcq9FTaOOMuY/VVYsnI5QqgjqmSsT7OJ7y9hosU0lb?=
 =?us-ascii?Q?neVewwtLTQugFmIA4SoiCHtC/y+HqLt+e4sdQhvhXKEqIPezI0IRUmnHsGx8?=
 =?us-ascii?Q?GJeZWgDqbloDcpAubkPLKzMC+89EQ5BvN4+5jzyegoFq4wmhjvhV80cnzBh2?=
 =?us-ascii?Q?IjEC1GoQroXqNHvOp1JHzd3P0LjzQuiZDMMsEX3GS9gRLu9QCBssabK/JY02?=
 =?us-ascii?Q?zc5ZBoJ3mYBoY611CaZ2IvL1sdjRz6OD9Vu6Eiu4TMsjdnqj2QcZIW781Mnb?=
 =?us-ascii?Q?zRaccHuiUHi7P7+prhj3dOLGEMCW9EALQztm+twDUMERhqUQqWGYmdtAv1n4?=
 =?us-ascii?Q?3WKmD14fJ7tUYA0OZmqxBtvxSLBtMjflmZ3/r2/xwn0p6PJWe8/pMdqmuqfJ?=
 =?us-ascii?Q?+quExuygE0nH2VP/84a3AWlI6e6irGboznRREb0O?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bc322c91-b47f-4948-de49-08dcc2a9ea8f
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2024 12:57:02.1569 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1G6GBfcbeVhAk9cgj02oaw1XSBFFAptBNwTpE0WV8KXmrLkdZvsqD9FMcWwaduA0CWbUA/HpuWODBvNuSU6hK2X8mKCINOHfoAaQ8WUbr4A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6879
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724331427; x=1755867427;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=mnriv2Oy8KXNzxD16S1pMNiWdfUYE06Td6wOMKhB9Hk=;
 b=gzuvZUav9c9dVrRVraz1BMhx7ORAGUre48TWKF5O8H7ZyKa4yMvAFa+S
 SXoPEL1InmRJ8tgAcqFuuC4NswhsxBfmCjHNzEj2PSVTHox8PktXMvTPt
 c+lrxjfLIeEckz2X/pFNO6M3fg7fGSDefuactw85Mt9d3WXX4SZj19Gyh
 rJ36CUklj/0coMq/F4Z5Rez9FG9Bzn4O0Bd3+b8mcRysPHS+z3YrsUon1
 9HJdNLDxQtIn+wNyfZ4lU3P6dmw5h6EX2ZTUU2HueRlP3jGJyeT9pJqWX
 GUwtqiHqBf8efOvluOxnR6o9xyON8bnjrjFKE4Bmg7jx1iw7CVYlGPoZc
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gzuvZUav
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 4/6] ice: check
 ICE_VSI_DOWN under rtnl_lock when preparing for reset
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei
 Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com,
 Chandan Kumar Rout <chandanx.rout@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 22, 2024 at 01:34:33PM +0200, Maciej Fijalkowski wrote:
> On Mon, Aug 19, 2024 at 12:05:41PM +0200, Larysa Zaremba wrote:
> > Consider the following scenario:
> > 
> > .ndo_bpf()		| ice_prepare_for_reset()		|
> > ________________________|_______________________________________|
> > rtnl_lock()		|					|
> > ice_down()		|					|
> > 			| test_bit(ICE_VSI_DOWN) - true		|
> > 			| ice_dis_vsi() returns			|
> > ice_up()		|					|
> > 			| proceeds to rebuild a running VSI	|
> > 
> > .ndo_bpf() is not the only rtnl-locked callback that toggles the interface
> > to apply new configuration. Another example is .set_channels().
> > 
> > To avoid the race condition above, act only after reading ICE_VSI_DOWN
> > under rtnl_lock.
> > 
> > Fixes: 0f9d5027a749 ("ice: Refactor VSI allocation, deletion and rebuild flow")
> > Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> > Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> > Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_lib.c | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> > index b72338974a60..94029e446b99 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> > @@ -2665,8 +2665,7 @@ int ice_ena_vsi(struct ice_vsi *vsi, bool locked)
> >   */
> >  void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
> >  {
> > -	if (test_bit(ICE_VSI_DOWN, vsi->state))
> > -		return;
> > +	bool already_down = test_bit(ICE_VSI_DOWN, vsi->state);
> >  
> >  	set_bit(ICE_VSI_NEEDS_RESTART, vsi->state);
> >  
> > @@ -2674,15 +2673,16 @@ void ice_dis_vsi(struct ice_vsi *vsi, bool locked)
> >  		if (netif_running(vsi->netdev)) {
> >  			if (!locked)
> >  				rtnl_lock();
> > -
> > -			ice_vsi_close(vsi);
> > +			already_down = test_bit(ICE_VSI_DOWN, vsi->state);
> > +			if (!already_down)
> > +				ice_vsi_close(vsi);
> 
> ehh sorry for being sloppy reviewer. we still are testing ICE_VSI_DOWN in
> ice_vsi_close(). wouldn't all of this be cleaner if we would bail out of
> the called function when bit was already set?
>

I am not sure I see the possibility to rewrite this as you suggest, we cannot 
bail out for the netif_running() case due to needing to unlock after 
ice_vsi_close() finishes. This leaves bailing out in case of CTRL VSI and 
non-running PF, which we could do, but it would require a lengthy if condition, 
which is not that much better than nested code, IMO.

> >  
> >  			if (!locked)
> >  				rtnl_unlock();
> > -		} else {
> > +		} else if (!already_down) {
> >  			ice_vsi_close(vsi);
> >  		}
> > -	} else if (vsi->type == ICE_VSI_CTRL) {
> > +	} else if (vsi->type == ICE_VSI_CTRL && !already_down) {
> >  		ice_vsi_close(vsi);
> >  	}
> >  }
> > -- 
> > 2.43.0
> > 
