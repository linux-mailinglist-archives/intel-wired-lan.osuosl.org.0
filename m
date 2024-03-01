Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FD986D997
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 03:21:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 738AD8238B;
	Fri,  1 Mar 2024 02:21:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RVnnrW1PE8Io; Fri,  1 Mar 2024 02:21:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AACE7823A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709259712;
	bh=UH46i4sz4sBL0rQZ5psiRBPISI698bDWYAMRFarjRMc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=H6wqzJai2H/44/oXYda218lxYLGfaSbG9tXPfmQyRBHMYHHiwqOH+TvBLFA1z8SrT
	 6EoVguOg7cczKZnhPi9owQ3rXXB9HJhnCOgJCz7I8T4l+k3Bf7kA2FvzfD6bnaZgVV
	 EcPwyKJlU1lbovlmUSHGLCxLEwcFXT7IRd1e4MXvYAyLXjlJDbRrbzEickcvNCIVxw
	 43ffnMaepRItIeVcBDEe4BHYvNYvH+AOa8evR84hiXlnvdb16yxqzkJOz9xtlAXC+S
	 ndVAai9lQj/CzZCUu/TiGTdgDtJzfbGmPkrPooK28EtHKi6J3ddLkagvR5sr2Tnzqi
	 5bczfW0VrS/uA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AACE7823A0;
	Fri,  1 Mar 2024 02:21:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0CEC31BF39A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 02:21:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EBEC640533
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 02:21:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OEJ0Urpioc1k for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 02:21:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F098140125
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F098140125
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F098140125
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 02:21:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="14349101"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="14349101"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 18:21:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="12725160"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Feb 2024 18:21:45 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 29 Feb 2024 18:21:44 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 29 Feb 2024 18:21:43 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 29 Feb 2024 18:21:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Db20lk6HpVSrC57xs8C6US0GNlvnxv3n67z8x82Jr8Z16dPdZD6tuEai8K7GoqmkdQyEPX+hSIKf2+ZIIZbejp6ZsrqGuBnhTEaLdPUVJOuYUnET4Okys7iXP6sJyqNE+vJF7dBurjHNHpvdsCmMeBZqillpv27TAIUqm86dDCPEX/VL4oHS+8qUDICOf6KCpNQKZbEdgwwn3nAsgzkFzXaJIlHtPAx6c3Z1/To8nli1M5NS2zVIYcnIwQHg3+BO3lT9RMd+QFrOd6h0eADFOmZQnJzwPBZsg9cH6RMEAGGGwaQSVVelrcGbPwfvt/kbVIGnBhGJ/s2Pmr1IQKpkxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UH46i4sz4sBL0rQZ5psiRBPISI698bDWYAMRFarjRMc=;
 b=NUuXiVYsTNSvpHg/k2GTrEBTLMVykhrQpGog+N+PaVEAGlSL4MXROS83ErLJ/cHPZB8S4paoGv92h2kzC/1SUU/mpIuhF1urmGKCRnfE9CPIx/rTQEbRjbCvpfz8YI5hR6BSwEjrh2FFXBb3Nv/Ik15rJ3wSBTvHMeYyUvpheanxnwvRht7wTPQiSMBxNy2rR28NUAGosbp5tofAjxJwes8h7R+jrqvJdj1BaLLHZMQ1cscOArSEZ4oZX1xnzigAKDDwq0iiabn7mSZ45D/t55aQnurVXdzEXdvqcsZkW2sR8yjzROWfGbpFXFKJdSp3a/5fESakuJeoN1iqM+36Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8313.namprd11.prod.outlook.com (2603:10b6:610:17c::15)
 by MW6PR11MB8439.namprd11.prod.outlook.com (2603:10b6:303:23e::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Fri, 1 Mar
 2024 02:21:41 +0000
Received: from CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::d738:fa64:675d:8dbb]) by CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::d738:fa64:675d:8dbb%7]) with mapi id 15.20.7316.037; Fri, 1 Mar 2024
 02:21:41 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: reorder disabling IRQ
 and NAPI in ice_qp_dis
Thread-Index: AQHaZEZgAa6mktnj+UioGUyDXlKP4rEiNYUQ
Date: Fri, 1 Mar 2024 02:21:41 +0000
Message-ID: <CH3PR11MB831321F6571E5F3BE7A7EB94EA5E2@CH3PR11MB8313.namprd11.prod.outlook.com>
References: <20240220214553.714243-1-maciej.fijalkowski@intel.com>
 <20240220214553.714243-4-maciej.fijalkowski@intel.com>
In-Reply-To: <20240220214553.714243-4-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8313:EE_|MW6PR11MB8439:EE_
x-ms-office365-filtering-correlation-id: 7122ff33-8669-459f-7c65-08dc39965528
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PUeuIXL9oJ92G040Vpi0yEefqo4S38l7voTZZ3zLIIu60OrOC3uFEFJPQAacSsKwM2GzQMhnyqqIk3w5Wyr3jLWBvU1v2pnt9L1PAFaOdXdq7CUCMvwWXig7FQ0Bv6D6KsEATYRn8PzgEDva+rb2NR6QROHWl6FEpwk9n3//DSEKu9kKCny7iNw6x9rtzkCj5z5HQaOnLDWKPxPZij3S7dAG9nQUnhkrqkjFBXcBYEFowLcLobqf4wQQ11bTbJez6vS2KI01g5ym/5OgKnmlL7NQN5kVulsDEIxflzcjVfueNjACAeMQmSiDInQf5ZoMTOAP/HJ02zZCRhEL11DbbJDGDKmyeovWCoTbiFT89er6F78bQ2tN5YCazoPeBZjTpbArG+4Dqdcnzc2IKTN4TgHgNKcRmZmn2l8lXziNfgWMkeroC7lyNghRmtmwd5fFEdFwaMMSHRqzuCwFr+BqhTMDgPC6HgHJnqrCbmBPOzLOGjIrdnfvl5itiKTPBQ8BqzLvGsGE7N4UGlOTMmphzZlTkbpaK9R1eZN2v6nKyH1XI2s7k+eWRkKcIvorNBEx6mdre/tQxxXoWt5zbrN7LszmpTwL8Ixhjkl4+45ZbuNvVg8NNZvoZY7OiUgxx7nOPwBIWeEURkPFw8oTZUOPXtOdUn1RFFWZeBwHeBM8FDS1FwjqVWbCzwcxrS3lmz4S2ZwzxL1wJhKtYW1e63e2qQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8313.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DBoNYYc2VR+PCA2UMhFfG+vZZHRkYtFeBhM/2AVOkwPuz0pvnl48fwQ9mroX?=
 =?us-ascii?Q?ixLP8W6CtsSk8d4ri5NS0o/lnOFjyS6ecPmC+di0sGDJDM9fS7A2jSK619aq?=
 =?us-ascii?Q?bQxz0igCsf1jxj6vSXSV/5iQH80kTuqqVCEWoFqz0AXOerJPI7kFhHCjthPM?=
 =?us-ascii?Q?/KvBSZp0VNjl2nh7gVrSDDxGZ2BwEjk5X2ABKvSeh3XY+37aJOStkk9LCDrt?=
 =?us-ascii?Q?dT7fOEZCQGzpIf52hc1OGUADlWVIT0D5uR2HtPrk1R5XRXZlHUahmpVzaS2d?=
 =?us-ascii?Q?HohIgyboqafZ4tjMs7zTx332prwU39pOeeQ5wJD+sR7Ryfsc7Ggc4OAHg+m4?=
 =?us-ascii?Q?kHsIHAct+jxTcidpKR/aYfE/qwwtXHbIKlUNFHWU4z1Khbn+DgmmtLyuNCge?=
 =?us-ascii?Q?8N5/5AyOTGylTHGxBKnGiFfTmJc5z4+AcdyHLd2UqW02nmwOi1RhCUVSNvdX?=
 =?us-ascii?Q?nWeT339xN4zkPiwaj9geGVdVX1oa2HvvF2tD5bQUWjtoS1D0KgLIx2hd3aEB?=
 =?us-ascii?Q?Fvx07mCSeKfoRilmLDFOGmFcWshA9RerPiyXkBeXe+uuE+StBh+cAG51E+af?=
 =?us-ascii?Q?nNSH/Rv6xuUf3GZsMDwGelTZ8/ly3JUUao1OIv39Ym4ulNq9FOAX1CZKhN6Q?=
 =?us-ascii?Q?g67Wos780GhB9xNZhN7W32vi3mpdDVKIP51OSnHG0IRwptDw9o9hAjcDflwK?=
 =?us-ascii?Q?PS102V4ZQufjXG4sIT/X498GrduMEe5G+N47Cmt8Rj9L5LEcyYmCEJ8Hu8eu?=
 =?us-ascii?Q?iAg+HRQ38Tpr3E49diB154TC8NM044dFj+WGBY3qZZyOjZ/VeDedvtMWby3r?=
 =?us-ascii?Q?Fw10QA3EqMbFZPu0LnZ5VvSiMM4/9YoyhKU4C8WIQv2KBubQJ/8ccXc2Q3Pb?=
 =?us-ascii?Q?89Nq9s1Wn41PYm20QvzTeAalM86rnqWUhdU2oS1CtqJaAzljNjAowIF4q6bh?=
 =?us-ascii?Q?n6V7FdiK0dSGNB4uTA+N+xb5/9dgF125nH9DCsXuLkjhvNPOcQXiu3paytBK?=
 =?us-ascii?Q?l8P2N4V/oL2v2e8++oNPZovYd7KgNku8B2jOGRE1OKwCdGkzJ6kW/CW7fusR?=
 =?us-ascii?Q?6Lqd3vXHEIBv4mnoUORVK/OJQNv9lFneshSWV4apiR8oWLlr6NZ1H2xGDH/M?=
 =?us-ascii?Q?oED1GUyD6L7Auv+N0Nn+Cr8kUz+K6jjnHgajaXpeur+4qxwEjbdnQkXX5NP8?=
 =?us-ascii?Q?azEZ4eZZHnHUebvswAjIzav6dkf9BDe9TcRokJFlUG8dh1F1MEyj+OqsPyA2?=
 =?us-ascii?Q?mYjxNuqxCcULV1goCjGdxX4Tqs3Al0AT2Am4FBgx20B/AQLh4C3keFNHXSdX?=
 =?us-ascii?Q?DRUExXe5I5Gp+hRF1VleldwY/sdAAJbIGSwzSQasICTt5Qjw3X9G+hjum/GJ?=
 =?us-ascii?Q?G9jIBVGdoYnahMOt7BgbduIRMj6EWbw3+wAHY0Sqyuo3xGTmEZ8dQ+ToN6IM?=
 =?us-ascii?Q?TDPYwM1bzm7ptWyLHmXMm9QVOeOmUSXhCT0ilzd4Uzo6ELudJmVkLs6FaDG/?=
 =?us-ascii?Q?Rt3RbXilZrDIWrMzZNCuMFcRnjkNAIvGsI7fgW4v65qQa9SpneQyD8q3cSPa?=
 =?us-ascii?Q?WhkvbpmMHc/meAFOYqe3x/iOB+TohcAyvORU9ZC3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8313.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7122ff33-8669-459f-7c65-08dc39965528
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2024 02:21:41.6247 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YbA7yaNVRc2doc0r1jH/hn16x52H3Hm8dIj8rw7sD5/HTeiDYODMg9cvuTzfx9l7HEaMwsMq1I+Adfg1FyllcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8439
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709259707; x=1740795707;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UH46i4sz4sBL0rQZ5psiRBPISI698bDWYAMRFarjRMc=;
 b=GgTCzzpvlIDiRDzQYg3LDvMZsWi0HFvYhBPo5tGN/HYnSf3JXJwLXVBU
 9trEo1INhw73AFqxKgvYbqj1PhXGOFrVMqMXqQiMdH4CqFCaCkOCsB5mb
 FArn/0Ghx/dIeuRq0MABEjC0dInu62Z4DH+CM5jFIb7PPf0NPvAgiFiIE
 IAT9lK8wg901sc2sfZao/1bAbe3onS/JeJl3Qoo3gSqNUEG++zkh4ce7O
 jCXifts48uwMJQVW+9BduRJsosKywDrCATFmMwtZDDGj0bv+i0w8+dRSK
 VXDDiByGFZtfpgQfA0pg2s1XxVZpQZ6yPs6uDRogqX5IeS5PccA0B3bXE
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GgTCzzpv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: reorder disabling
 IRQ and NAPI in ice_qp_dis
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Pandey,
 Atul" <atul.pandey@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Nagraj,
 Shravan" <shravan.nagraj@intel.com>, "Kuruvinakunnel,
 George" <george.kuruvinakunnel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Fijalkowski, Maciej
>Sent: Wednesday, February 21, 2024 3:16 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: netdev@vger.kernel.org; Fijalkowski, Maciej
><maciej.fijalkowski@intel.com>; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; Karlsson, Magnus
><magnus.karlsson@intel.com>
>Subject: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: reorder disabling IRQ =
and
>NAPI in ice_qp_dis
>
>ice_qp_dis() currently does things in very mixed way. Tx is stopped before
>disabling IRQ on related queue vector, then it takes care of disabling Rx =
and
>finally NAPI is disabled.
>
>Let us start with disabling IRQs in the first place followed by turning of=
f NAPI.
>Then it is safe to handle queues.
>
>One subtle change on top of that is that even though ice_qp_ena() looks mo=
re
>sane, clear ICE_CFG_BUSY as the last thing there.
>
>Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
>Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_xsk.c | 9 +++++----
> 1 file changed, 5 insertions(+), 4 deletions(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)
