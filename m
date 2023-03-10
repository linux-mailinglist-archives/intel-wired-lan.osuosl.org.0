Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9136B4007
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 14:16:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 89C7A40452;
	Fri, 10 Mar 2023 13:16:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 89C7A40452
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678454164;
	bh=OzacYBswGPT7b0H16GYmEabt0T1RqD3nLC/dywp4oE8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IIb56HC7QD/85I/Kd2bhbsCPyG5n0G5H3A3/zvMOTxVUBx6RvyCHcvZjE+6M9sX6l
	 vQ5oOrw16DAuL4oBXmRqbrj3uj9nAL06U1gvlCnAk2w3xn3eZLwlusBhiEQQh+t9D9
	 kEwu6IzyFOVCTxv90/RBhjKfbCCbUOAKIN2XLlJUr6LPzjJJag+wLnCkSeq/Ocr9NA
	 P8SSLIdM6sUolJzZ6gt6G38lGjEqnQx7ucduNnxLL9IxY/FV217WesS4Nnaf3OwFxV
	 tev5DRKoAzlhCvBO5gnmhDmaX2GLJRtD7/EGzXlWIg5XvOTqre7TwcyslkMGzLVBn6
	 PUDKM0XHBNyJA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QftZq8Z93Rf5; Fri, 10 Mar 2023 13:16:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6183C4037E;
	Fri, 10 Mar 2023 13:16:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6183C4037E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 60D481BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:15:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 388294037E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:15:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 388294037E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qDHO1jt-XSWn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 13:15:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7192C40123
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7192C40123
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:15:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="401583923"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="401583923"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 05:15:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="708003802"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="708003802"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 10 Mar 2023 05:15:54 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 05:15:54 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 10 Mar 2023 05:15:54 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 10 Mar 2023 05:15:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MCcfuWe2kJ4bv4IeQgO3cwIqDnGOahUtzlQe44bHYu5m5SPAp9k5iCDj6JyemTkQEa4x7YvABeboxFJlLQNKNf9Q6fBgpIfvPhP809OGgFu6j4mvNUtH+iF0iKc25XFCrhs6ix4k9XjChypcXtJj49AXXTVsXnlF49G32lw2InWMne+gZK0zMZMWboIJKRHsg7XFl3G3UFVTZMchpxtuoyA9glPDsICIuEWkVcqLX6Lha5sfTXxHWJYNgEjUAywLLjTvGECT+y8UEbmPDh7aAfjkaSNStgT8uRgGUeJGYcs0L8AlVYpyPoTvQiCQUYWfi8fNk8FaHdd3Ner0JY1u+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PG4i0tiOIN3MWlie0t5N2NObhK7/3TgQmLUn7T4S8o0=;
 b=HQ4h+CX3Gd/IYNoz31v/f1zq1TLYg0wZFd1EcJInxHbCIW3lb9UFf7W555YWjbDHbaXemujG49XFCJsZucH20uwFFeqKAb0KoQNQB/x/BmlaAtUEn5FHwbW/7+tmk02TzGr0XTFnK/nHA30UpBOdFMmaVxnffrvTWkyKAJapiydBlFi4Lz23uGxlBcFDJOPxAEhM2uswPBuHrFzPQudp/G2ZhYYjg7F0cOKrbHLfWXpRiBxvqi046PT5B3+0l6EO+yCmOpvMhZVqYt4WBciXq1akAtIioqWWLhRxpOxF6UYn5KWlmb7o2xZZZuSE9wSiTRkBSxkqZ06L366pd6z/dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by DM8PR11MB5686.namprd11.prod.outlook.com (2603:10b6:8:21::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Fri, 10 Mar
 2023 13:15:52 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e%9]) with mapi id 15.20.6178.019; Fri, 10 Mar 2023
 13:15:52 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [intel-next PATCH 03/14] ice: track malicious
 VFs in new ice_mbx_vf_info structure
Thread-Index: AQHZRuIEkkk0GqlIokqC6ZYGTlFmC670FwRw
Date: Fri, 10 Mar 2023 13:15:52 +0000
Message-ID: <CY8PR11MB7364F54BA24E6865988F51FCE6BA9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
 <20230222170920.1629293-4-jacob.e.keller@intel.com>
In-Reply-To: <20230222170920.1629293-4-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|DM8PR11MB5686:EE_
x-ms-office365-filtering-correlation-id: 0a9df7dd-3682-4f54-b831-08db21699301
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0GnYVbY6hNZTh/fmrCs+WcZTTNiuIliAro77fkoIsc8LD8oiNoiE5VZ0tcAKsMFH2aA1yeTALRDPMs2Z7D4ZP37I+b9gPX6dFBOA+gHZsf2sqroTOFpCELKqzfv5YCR3wJElHJ0Kx/Ge7LEdJ7C0fDNLrjwWZWphw64aqTfRH+DLc1GOVQfAMkzfbwi7ylsxTNWUSKvEve+KHcV/IIY7FgD3DFOAUNBE7crhiFuphXUs5t4UAjFJK9Xl1sCIzeZrPSt6dsmO4QmfZFaJzkNEi6KiWjfq1MV+mZRuhPxt1G0sq+Ia5WtvI56jY8Aui9TOTWpjpQeFX2T/FLgl0qNcLv6cJ6PVAGFoy6AKEOkZBzwjEq2clQHBe5ZHB+PpjWcmFFPVRbOCF53QAbNdqhKC8SkF9IsuAyJ5sI/oMsuNukcFvGulmcJIM4HQt+D6+kJKifx6TH8j38e8KJVBI2+kzq2aV8i0qLqtpOuUMkxOAFz8DouWTBtTPXcpd+fr7T4kjiqF+U0j7pl8BLefmkjW4ZPjucZ+PfHVEI+JO2fAWzrY5tkghsa4mT+jssduuJotp1y54/12Whs09PQcIp+V7p1Akm7KIgmnM4Wt24jecuC6zS6boX6NxD9rdDqBUFAG9m+0cNCVsDxQtOxDPKgIoEPBF4Rtnwout1z3SnAxVyq77D5BNBmlu3QtSPZeCSnG9QMoW+bzoaTjqPD8pRSp2w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(39860400002)(376002)(346002)(136003)(366004)(451199018)(55016003)(186003)(82960400001)(7696005)(71200400001)(33656002)(478600001)(122000001)(38070700005)(38100700002)(316002)(86362001)(6506007)(9686003)(83380400001)(26005)(41300700001)(53546011)(76116006)(8936002)(5660300002)(66946007)(52536014)(64756008)(2906002)(6916009)(66446008)(66556008)(8676002)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?nvFUh/vXUK3u4v72dcCQBJRTTej0NJk0dc9mgtQNGjnzqhH8AvrIO05bGo?=
 =?iso-8859-2?Q?l8B8K1tAHAKMHTO1Yh1RSpnD+FWT77gxkjwjOWys4vGMjJ/zOKMAfkQHfu?=
 =?iso-8859-2?Q?+Qm0jABxLAe/e5xsOGqXYHq4t7lirnXmq+ioedIXyj5oGecoTcGusWGI71?=
 =?iso-8859-2?Q?ciho7FV5RRgRGy5LRUTsNLbG7p6kYN0gEg8wS3Od8kOq4zZimTzTcvz+qs?=
 =?iso-8859-2?Q?A13borWk764EEkzQF1HwO+MRYeeLtQPopbr/cJsbHO2eV3llcH7C1RlO1b?=
 =?iso-8859-2?Q?NgNYUvzcE3dvuzzchtqipHR2StM0yG3jzmCFFL+WIFfI+hekuWgd940Y18?=
 =?iso-8859-2?Q?7QXYjLraf5TXwE9wPMk0ALWBecCz/EC4kM/F9kgoW4qnIzE0VmM+MT+4DB?=
 =?iso-8859-2?Q?BZnnNumIa/+BhJGg4cKzfD8Qv4ttNQlvz0i3h9BxgJudeICH9rTc257pdc?=
 =?iso-8859-2?Q?A76zUjj1op3Hs7AqOiW1nBhpixhB4eSQdgPPXh7ZmdbiXC+Jis5iPcptIO?=
 =?iso-8859-2?Q?bp5Aq8pg4qjU5lMNcBo7olX+rjcJPIrelyFeLiSTQYlwToouLnDR7sh8v8?=
 =?iso-8859-2?Q?wTbhvkhyOG4/2T06uaKkXvELE9DqGihSR/roPNmB8x8r+LMNgDBkyyRGea?=
 =?iso-8859-2?Q?/H/tZp/h52mOrdjRla/dZBTWxq1RLTpbPERHA5bJr2CZ82sG7s/uCw0K+w?=
 =?iso-8859-2?Q?gOGEUBGquUsAeeNMehMfSNROBGwvSJB4CFWWe4jRiWRpCkaburjejOIkj0?=
 =?iso-8859-2?Q?IzqWW3ObIUHaTgAlBTc08HqLYhQw4QHKZXRV5uNqED1KRXVqt7IHKD+2aX?=
 =?iso-8859-2?Q?oktkss/tGnZBjmb1FgJdN7LoQHGjA78E8+QcLk5iTFq62rO7Uw2tFYBikg?=
 =?iso-8859-2?Q?ajuH6UaUxsqGMLrD+2hyxY/ymF9fXoWl77XR/AmNy9EjRMQ4+OMTs6jH9i?=
 =?iso-8859-2?Q?GOQV20lxW2ZdcfEO7Y3QOElrvZJAnlD6yrTlYf5NNjIGxIa5SreVYCUuOw?=
 =?iso-8859-2?Q?QXoiwxcyywJMXh0Q1uon2cGLw58ZaztDqSBpKvmBIc4nM/jgx4gr/y02tk?=
 =?iso-8859-2?Q?fHv56MBvDmtUEEGmiDqD17CVIFbN3n4KorIQEp//d4zx/N5ZNWsG2mJtuZ?=
 =?iso-8859-2?Q?8TbDDDh04xMSzhEbe5F5bkEyLbTuxjQv/3+GfirIwGCWKL2koYL8Dz6+th?=
 =?iso-8859-2?Q?p9H2BFDJCrsqeLo/fPmFflkNNvI3DTHvLPOicPaT2FyDR4NmIV/C4DxGcG?=
 =?iso-8859-2?Q?eZnpYOHUhiADNp0COn0ukhNVAkrO3jWn9L1U7h33hjnzAIZenVC/AUxhHj?=
 =?iso-8859-2?Q?bnC2XFr49DIcqY6su+zLbMuZ861v9lRMjCuNNOOl5mcW8CFOMdNBBkB5ib?=
 =?iso-8859-2?Q?Fv110GayfWB5RGsxEYyHsiyUzhraLLfPO0+xUF4K6Pdnc3NamHhe/RueER?=
 =?iso-8859-2?Q?EILmJfGmgH/xq4fNgBW8VMocK8tCRSsvYlVdPvY55p7W/or/LRktRDb8Ff?=
 =?iso-8859-2?Q?xEKZpVISrNcaT2xe7vgHWVKXtrRaj36i4r/4gCby8hX7CQ9qBx8xQ6RH0s?=
 =?iso-8859-2?Q?1FhsWfBHa+LjYXpBMpYr7L6/AkW6vfhNUzR+HCGe+YTEu9z6LIGUXwkpdy?=
 =?iso-8859-2?Q?7yV/ONH5X94oaHsmCyhyo2rbvh3TzdQ5gV?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a9df7dd-3682-4f54-b831-08db21699301
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2023 13:15:52.4390 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QhoS/lTESHw1gjM+fOQNDjk8soMx/A/53awkLT5qpfMozK0Bxm9m/6BioWx2YRvi+cmDAtNx6gBkiOqwhAhKnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5686
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678454157; x=1709990157;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=yYVDbReThqDIlMRFiRfRQCpgcvMTIHCuwD5FX6iifqM=;
 b=BL2IDUHe1v5Z+2L55HH4gNuiqWPN373eD+w1z2tTv3zdhnEHZU/AIejb
 sj0E8dVL8mR+Tgz7s9Ftu176XQPHFkCmuYKjehwxsaMKggSjbzYkvoxJx
 Raf8NyCg9oSI12gSDCNnetX5+ETCxLF6Xs+GWdPHIvuyVVgbieDh8Q9Bp
 Pr3YFu2JOKePcKsnWQlGQyI7pyPq/Ey2TYbDxhHA/EPawVcexXMePQxt+
 TeCrzj7nLsP62lMlty2/T/ydTkysoV+818hasL3fPgPqPY+9Il0fN4kzX
 zcb04zNQ6ogyLV3/98B6baCJqaFHjUIJBbQVEnIfhNYha4FjbxVrIwZE1
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BL2IDUHe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [intel-next PATCH 03/14] ice: track malicious
 VFs in new ice_mbx_vf_info structure
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: =B6roda, 22 lutego 2023 18:09
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [intel-next PATCH 03/14] ice: track malicious =
VFs in
> new ice_mbx_vf_info structure
> =

> Currently the PF tracks malicious VFs in a malvfs bitmap which is used by=
 the
> ice_mbx_clear_malvf and ice_mbx_report_malvf functions. This bitmap is
> used to ensure that we only report a VF as malicious once rather than
> continuously spamming the event log.
> =

> This mechanism of storage for the malicious indication works well enough =
for
> SR-IOV. However, it will not work with Scalable IOV. This is because Scal=
able
> IOV VFs can be allocated dynamically and might change VF ID when their
> underlying VSI changes.
> =

> To support this, the mailbox overflow logic will need to be refactored.
> First, introduce a new ice_mbx_vf_info structure which will be used to st=
ore
> data about a VF. Embed this structure in the struct ice_vf, and ensure it=
 gets
> initialized when a new VF is created.
> =

> For now this only stores the malicious indicator bit. Pass a pointer to t=
he VF's
> mbx_info structure instead of using a bitmap to keep track of these bits.
> =

> A future change will extend this structure and the rest of the logic asso=
ciated
> with the overflow detection.
> =

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c  |  7 +-
>  drivers/net/ethernet/intel/ice/ice_type.h   |  7 ++
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c | 10 +--
> drivers/net/ethernet/intel/ice/ice_vf_lib.h |  2 +-
> drivers/net/ethernet/intel/ice/ice_vf_mbx.c | 71 +++++++++------------
> drivers/net/ethernet/intel/ice/ice_vf_mbx.h |  9 +--
>  6 files changed, 53 insertions(+), 53 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 7107c279752a..44b94276df91 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
