Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 667B7875EB0
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Mar 2024 08:39:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4DDE60891;
	Fri,  8 Mar 2024 07:39:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XkZ9GDwzRZVd; Fri,  8 Mar 2024 07:39:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9AA2860815
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709883594;
	bh=pXPR5+tGdckQI3j7zjzICy+P09BAE6pYjyM+AJOxEOQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CKxH9b6d9vaG8fDckI/yMCmvUdcw/8xC7k3fp6wgLpIJOXKO2wXd4weOKo2mMyp0T
	 sbi88EjRndewIq8csZHLGKh0laN1w+NUeQzc4MCUHYr2vzY/JnqDqNxF+qZWsgx0kU
	 cKS06G3uO1VgCsyncNafQAOmacAyrv4AKeenK7DewneyqNHJ2CPmL8jnvXqCwhR8wJ
	 U1iOEQK7P3KjkVPF0F7czncI/Z3Tt2E+Szkq7SB1d6kMbbVW7DLWAEvnD1xu3XQO3k
	 trlgpgnR0z+Uu25+FS8A+RT3kaXf8UnFqSZxX+fY1uTD1/eUWQZWGwWuk622mApIHv
	 GzH7qtk4gxyHw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9AA2860815;
	Fri,  8 Mar 2024 07:39:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DEEC21BF316
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 07:39:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CABEC8225E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 07:39:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ObUKnzTIq92i for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Mar 2024 07:39:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0BC758219F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BC758219F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0BC758219F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 07:39:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4474334"
X-IronPort-AV: E=Sophos;i="6.07,108,1708416000"; 
   d="scan'208";a="4474334"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 23:39:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,108,1708416000"; d="scan'208";a="47859741"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Mar 2024 23:39:51 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Mar 2024 23:39:50 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Mar 2024 23:39:49 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Mar 2024 23:39:49 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Mar 2024 23:39:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kDKxbLxGxomdNd0DMOspV/Mgixaqj00g1Bj2XUUwve6Wcr8NJOP6F1FTJUNIyq6WfMEJ8DycnZkeaq+dbSZpmypYvymDZfXtnZR56zZU/XAafc5D8RFcBBVtKOdt8geMPhP9iSsbyHgfRssRH+Z4HE0X5qTY+CVfyfBReE1IVYqEhLttvXxx9VhgS8R+2i+Y8pIxCEYzwUhcehXGWB11PeHiEH/AkgqLeUnyIjkN1G5qVIEACfFfKYF99eLOcOGrbaFPqs7d8pdkIEZXcxrhyEHwx0bM2n6d+3M10goQkhU6MfV20llgZoD40F/Ht26nObSnPhJepcQndH/Vtm6XOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pXPR5+tGdckQI3j7zjzICy+P09BAE6pYjyM+AJOxEOQ=;
 b=ZsN58xsADh2iJ403KNrxojukMbkx2hvgGnAXjbKQkMyKQRsNoCuhlPl8ZWOdsGt+OdpWLrM5fFCeVmYTZShHYEgu7F83CnK64PJae1KVQ4WfVFed3zZz/2D2Eo5TEGCJjT1v+hA0VX5kmfKYfMCljkRg6wdIWLKVGH6SXja2sRN6v1mB6OXUWXq6YQmV3n/F3uOC0JaHUS+IfPAZHmesprjO4Q9feRnoW0S4ye4P52jajNEMZqkkmKsl+7fTMcPjc36zWcdM4ogGdvt/+QigO48JcSF4PS6WTLEZB5Mz7fjSz81JWaMmeVS7tmUn6sTokDqrby/cVc6NS7kNNTWlSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SJ0PR11MB5183.namprd11.prod.outlook.com (2603:10b6:a03:2d9::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.9; Fri, 8 Mar
 2024 07:39:47 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66c9:72ce:62ab:73c2]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66c9:72ce:62ab:73c2%6]) with mapi id 15.20.7386.005; Fri, 8 Mar 2024
 07:39:46 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [iwl-next v2 1/2] ice: tc: check src_vsi in
 case of traffic from VF
Thread-Index: AQHaZYu6mLGGwzgs/UKfiYLkhqjfJ7EtjGuQ
Date: Fri, 8 Mar 2024 07:39:46 +0000
Message-ID: <PH0PR11MB5013A68360671075AD95F4E096272@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240222123956.2393-1-michal.swiatkowski@linux.intel.com>
 <20240222123956.2393-2-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20240222123956.2393-2-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SJ0PR11MB5183:EE_
x-ms-office365-filtering-correlation-id: c8b20d22-6ed8-4d80-05d5-08dc3f42edb9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CiAeWnoO/zvL6UvaPrTTuCK5o2bVOmRW7KsSTUJFMdIt5bD2zhG+mRXfE8PVF8mdpGdSCT562nhZ4qLjBJHn47ngTj7JzRykRt8n64aPtnTgZF884naOZytzpm+GL2oBHsa5CRhouCuyEJ1pdh43ri7HgLONMXnmySFAUgQLdjIo7/85tjWIRDgyGWWl//dEQnK6YzPirJg+IAsG4L6x5HW8g1GMdlPVDbE1/oZBdXIiukuaAKTUskTK0sGqXEWYMy5K/sbS/PdjsfPHkJ6eGY61TXrZB0sGvASr1Hs4lhm9WOccPmUkm4IGIspSZsGrqZOaOmlTZKce9ucuLo9f83dGrZZnWpKnEoKhPrapxWbiF3UEhdBPS8vHHYj58fu8r6MJDfo0NHr9HbLPWEaHXA4/p8adsiTFy8StZNsKC0XRwvdBpZNBb/APjXeDmKv4oU4JFSKppRRxGA5MV6tq8q8cE3I3iZctU3zBDRNNb2g83RnbcPsSrEiYdLP4cl/na1EiuMQSzcRhUTZ00dyg1RqA+aHAHHrXW807MXEA3d9T9ONqzgv2xjPLCV+ju2D54hsP+JknaGtIehJXy+AmSNt4mFcOTSzE+ATmGxtNeR3l0chg3lehwb3hP8opGI0lNuDMiDc4nuo8e0y871+z9M1CcAfCBmg7QjsvF0p8w4TlxGwpJC23z17eE4pFgrG4vGz0835gDDs8Y+R/+W1hewBu6VM4wSqs/d99F9EOoos=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?m4NmIWsNseZJc/03j2UF8hmuB3EtoPDlaK4/ubwX+2H9Nd38q2EK9UJD2KwC?=
 =?us-ascii?Q?5hZCQWWcUkvUt6nrpSZOqS8O31jWwm6pNCjv60FvCxiRTlWHIkHo7KX/M2Ym?=
 =?us-ascii?Q?WY5K0uVV1oZqGPh3JSCcIt7UqaurMeiKCDa1vNPsO5IIvcVTLZTxrL5hra7K?=
 =?us-ascii?Q?k2RFgfebFvFdLsijMyV92P1CsxSC5d8AAlZyWXhlHKEXLZ86Ik9JSGNVBkse?=
 =?us-ascii?Q?WWtIye4MZpHREOaJWlyPAZu4M/a4KEHUMPVMOyobuAbwg7qq6n2NDWWAyV4U?=
 =?us-ascii?Q?EG3BsB28Gqcy15PTdBq9ORSdq84RXwm9hBt/W/ZmzElbH15/YFeA7YBTRVdl?=
 =?us-ascii?Q?vTdHeU1CGsMtvjvIQ3msk3H5fr0k+64wdC+/4RtSmxLINL1BURoiXdrvYyJk?=
 =?us-ascii?Q?5xcjK060etcCSE1kNBTdpBcc/pM38x9zpmSklO0HaRPRAjoyZBzRTMqmNg7X?=
 =?us-ascii?Q?0S4x1DBjJEhTYASPK1197MQJiHB+kyvxqNRQ04mKJd6BvkWiMCDUUcwLeG7N?=
 =?us-ascii?Q?q4dyeJWQaBEAYI6XPcWTbNGEVRiO51X902ECtA/dhiydGUWVXhpZ7ztSl5F1?=
 =?us-ascii?Q?5DQemloyqWxVRalasmtnJNf6dWzUdqaFfyB1dUDfI1zxZewLXJUNUi0IhhT0?=
 =?us-ascii?Q?4YptuSfhNsDKldeAdODXAKfCE/ECXDxUs28EJrEB6SuIVn/9qRHvbQBz82IJ?=
 =?us-ascii?Q?Xpbzpbcjft8Mph38Li4UylJ8Sizg9nxXjUGTLKkNHIEsG+r+hSaFGLl/5UYs?=
 =?us-ascii?Q?KwpoxaLHNKQRXFGBWs6Giwn6TpxMBjaRZA9PDUNdo+g3U4y0N5nDNm1xYmM5?=
 =?us-ascii?Q?0D3G6BfzDqq8bqErFcwCGRtlQuokjxJubdeL/zjtTM9urx5KlMjpD+UZWS0X?=
 =?us-ascii?Q?sYap3DjhZThmnd+MPuB+12OVhjNvxfyf1PieFv/ePurz8CWgs0bLRliDtQPK?=
 =?us-ascii?Q?vPbzPBG5wusWknJEMsy07xCuqx0/Z2+4mxwuagdO/MoTSJVWkc5ttlqZ27lT?=
 =?us-ascii?Q?oArv/t2QBuKvziqF2rDrvc6TdGqVwT26Lo0w2PvS5hkQHvHiHd/Ngt6Q6o6F?=
 =?us-ascii?Q?Cf2n0Jzpy51NH0Pqd/9wI25So0n3VbXIbTpAPe+bZdSvtdA3b+I6myrsfoNF?=
 =?us-ascii?Q?kT2JCl/4ZPH1mNBOnLsCiXHMkyrKwW7HdXIX6sQ2bNUlCVH+v/bWPw737qLE?=
 =?us-ascii?Q?N7E4PKABtwKiYDd9bIJUlk8bf8347IIwCX/pKO+3rhzAyU0UhDZdVsqFQN16?=
 =?us-ascii?Q?SFL2WEDf1SmnTflnNRe9mJJFQGc7y2ygCvguT2ad25pNh8AZWA3jNm62Im2e?=
 =?us-ascii?Q?RmXDZZU1pyoOS7kH8vjDB9nmcrk0sPJJ0bAs8ZWWt1+LXLmbCSWkjgc9Aif9?=
 =?us-ascii?Q?84X5wV1Tm8aU+H573ymd722jvUL06WmIHDKGVhtGhmQ3xojp4Q979RxEO01G?=
 =?us-ascii?Q?8obeiaUzvXOytugIm5Ln+jK9vzKWM544hozAwysVP3gtbIAibi7CN2q/bwzR?=
 =?us-ascii?Q?bYg+TIuwML96NNDOj2aFfiBhZRDqd/raoxmXCidwaOItxiWCNNYVaQdlp1tO?=
 =?us-ascii?Q?OAPrMi6BkXlOyLoRL36O3XSREL/A8qDqQLHupEpw1+7D89Dftk+QlSGW5Nr2?=
 =?us-ascii?Q?PQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8b20d22-6ed8-4d80-05d5-08dc3f42edb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2024 07:39:46.7944 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ugdD+1KuDHd5Erp8XpfBFXZw8403s+5uphka+JhswEGwyAKMlQmnWY5kPAC9F0+cfo7RbX8YhsEDCSZN1g6EbbcwlywjjZdyPZihRwYCeqk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5183
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709883593; x=1741419593;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oDZywjMInk0EQR3V99Rhsw6ssBnlGazJNoxOscSFAKs=;
 b=gv/8T1aUqAZeb6U6T/M6tshe2FpryyqX9H/DWpcEViY7QxogFwVhbjNl
 tbme2csRF3EtSD+KB6q45mV9gjwut58IRpJmoxWVChFxhg6F44SgyVPj9
 W+xYjC8xqD8Zh9tKV0xFrZBtyO+RWlVxhSOKG+uF5kzlwk2LlO07kZCLn
 mU/5ij+RIImEyOkLLZFZqj5gVFkRT7WHRg9wmqBbxqeWmayQaCR3Reca8
 Y/N2ewlFN7C9lgm8gplwz50S6BtxPNTqtuLScTD4Lv+UXEs+q8ahZYOLA
 RfE8RtD8bj31WCVEoviK643A9z1eptYardrpz6qwTehpE8PDhkFBXJosc
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gv/8T1aU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v2 1/2] ice: tc: check src_vsi in
 case of traffic from VF
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>, "Szycik,
 Marcin" <marcin.szycik@intel.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Thursday, February 22, 2024 6:10 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; Drewek, Wojciech
> <wojciech.drewek@intel.com>; Szycik, Marcin <marcin.szycik@intel.com>;
> netdev@vger.kernel.org; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>;
> Samudrala, Sridhar <sridhar.samudrala@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [iwl-next v2 1/2] ice: tc: check src_vsi in ca=
se of
> traffic from VF
>=20
> In case of traffic going from the VF (so ingress for port representor) so=
urce
> VSI should be consider during packet classification. It is needed for har=
dware
> to not match packets from different ports with filters added on other por=
t.
>=20
> It is only for "from VF" traffic, because other traffic direction doesn't=
 have
> source VSI.
>=20
> Set correct ::src_vsi in rule_info to pass it to the hardware filter.
>=20
> For example this rule should drop only ipv4 packets from eth10, not from =
the
> others VF PRs. It is needed to check source VSI in this case.
> $tc filter add dev eth10 ingress protocol ip flower skip_sw action drop
>=20
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
