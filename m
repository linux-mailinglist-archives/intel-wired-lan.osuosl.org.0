Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE51719009
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jun 2023 03:30:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F70C614E8;
	Thu,  1 Jun 2023 01:30:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5F70C614E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685583008;
	bh=zLBnZbcB268cVkmJK71wv+ofyycOyPEGbAE/nWlqXoY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7ERkoylHvhat4ndFt7Xx2ww/n1BPK0SzPD2/IaC9S8WLWPxGHTnTZ1dJaLZJ3FLzu
	 gASDbC+Zn5h0d9JwjcVBv0eJHO+Du+8IygDtZz0DJesKZ/rCvNfbpnE6yY1xLPpqjy
	 4TzwQCYg5DBut6n6CPBzFYFcir0+204TUSFqJ2YvI7vaoUVQu/8ojbkLeHYf5uwoK3
	 JGbF95f3V7uzUxl/QDKJ+uEGPdl/JaFsasoJYYKjzMHQrAGnESR3kbzWoKEHFLPcQw
	 dGHE7xkli8+j7dMA66fTCFyitXRIakxZUFn0H14qb1N38SQGpS7Nqh5uQ/ajvXa6Hj
	 j7ukeHb0pO5Dw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jAYbMu8tkOnj; Thu,  1 Jun 2023 01:30:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C4AB9614D8;
	Thu,  1 Jun 2023 01:30:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4AB9614D8
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5CEBF1BF5A1
 for <intel-wired-lan@osuosl.org>; Thu,  1 Jun 2023 01:30:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3C73842096
 for <intel-wired-lan@osuosl.org>; Thu,  1 Jun 2023 01:30:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C73842096
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qFaL-1gZOf9e for <intel-wired-lan@osuosl.org>;
 Thu,  1 Jun 2023 01:29:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A703E4204E
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A703E4204E
 for <intel-wired-lan@osuosl.org>; Thu,  1 Jun 2023 01:29:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="335041876"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="335041876"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 18:29:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="796937580"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="796937580"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 31 May 2023 18:29:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 31 May 2023 18:29:58 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 31 May 2023 18:29:57 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 31 May 2023 18:29:57 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 31 May 2023 18:29:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eSqQd4LhLZAOYMu4FrI9DvYN4+w5wtckdhWSoUJZEEy/rnJ4MxEIy/iLFKChFn+ILi2ZNbvaMLpA7/3fGrtfqbmuX9UMDMKXXNMhEO4VNK+okL+UXXU4i1ht6BIlR0Ma5KkDZdM1fagirxuGF1f43pWcncN6bgINbE0evfMwWoClHpm9IcLbd7wWZ8j2oNX7lCJ0OmIuI9fz1+GZM34RoN1/9HPW2ec4apRNfvHGpzl0GZOKsAXJ7A5gGWaAEdVsuGkCYXkF4Zslq30gVrK3sL/O6j9bvn5iUardDAZiYXx/b0ziU/bVJn2iSy7jFcZuu4AATrb339ULhHlMSFhL4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7QsNwkJOU41/IqxUT0czsYKfs8zy3hhDfG3rYbgCnI0=;
 b=I9LUyJJ20X2w+H2+QIQ0k3NAVNjxI+uSCyiYlIQFyHSsrCG/TeSxYOcGiLLWLHuWkYWJDvZXXQFvEdtSCJ0l67v5oJLtjqumbUnoeiKbvZ0uGUJjb/+DRZcYMCPoIPZ/bkeJtdYz5Whuw5JFMaKE4YR1HPcqEi+aZ4A2/H+kad4V4ORDs5NNzyrMZSEy0sMBz7ednqs2F0rzOi45WHomgCdQ2RISOk1qo4R5zGIU4m0gb6D1TiwzJUl2AV44YC+OIVsRsYPh8ULvM/z9bd78bwVfHIwHhAXPzAXfSVSDDSWzN8I5hm0t+QydmJ0bqpizI3eDZU3xY6prN8nAsiWMgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by SA0PR11MB4591.namprd11.prod.outlook.com (2603:10b6:806:9c::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.23; Thu, 1 Jun
 2023 01:29:55 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::748:8cea:e1b3:88f8]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::748:8cea:e1b3:88f8%7]) with mapi id 15.20.6433.024; Thu, 1 Jun 2023
 01:29:55 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [PATCH iwl-net v3] igc: Add TransmissionOverrun counter
Thread-Index: AQHZlCSRIAJsOJ7ZBUaDwOZZweIG1q91J4pA
Date: Thu, 1 Jun 2023 01:29:55 +0000
Message-ID: <SJ1PR11MB6180DE3DB1A7F2B1C35D8CD6B8499@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230601005925.30473-1-muhammad.husaini.zulkifli@intel.com>
In-Reply-To: <20230601005925.30473-1-muhammad.husaini.zulkifli@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|SA0PR11MB4591:EE_
x-ms-office365-filtering-correlation-id: e4785472-4875-4c39-206c-08db623fb4a6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DFoCK3WgHnI8Pzm13PNFQJWBY9jibe4Hpr0ZMJulfk2Rxyc44VIgnfh0pIIKICPoJuSmP305lB8nPKZgpabeFtzUUHYEt3SkC/uyjtwGtKPk8BWftwALhrLqnLrU7Q4jSKeORQFF9KJzF4BE2wBK8PooZv8GKGTss9qSPQR0GsGCi0snueHnlPbaYQwyilY0gKAfNAZDY/roJSDfwZzC9XBaXSmsV/n2daCR9bgIzmN4aQWcccYLAtD+rmC0BjaZEU/+klchrMlbrUfa5G10iL6eyBP7JqZfrR9otDDteBCeu44BZaWxNT3hefVs0sOqMy+4uiF4u/heiO6GNC3i3Uh2+uQkgUM5K5ec02VZ/rI8QYZX+hkTRhXk7Lutim24oRBQFTS9fPXxkPY4cXs60AlxB8SeZa3LFIy/KGEkwV7evZbyvByz1ZSCDWEZ3psJZwGvTNmfmqI/I1NVrn/eKiLFyIlQeoyBZG/T5+aqlKvIETXPKSBD/HeAutJBIeG1zziCqiF1UnuKB4qOHdq9RsX23RiQJIcUlALCkowaA+1xnK8z39GdkuPzHcFoopW8vBSBjzwRbWiNmCYYWe0zI3OVoBN7Wq5Uj2EM6MuY9lWZDu/1DB0QQZGiehl0W9F0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(136003)(346002)(396003)(376002)(451199021)(26005)(41300700001)(38100700002)(7696005)(53546011)(9686003)(83380400001)(6506007)(186003)(478600001)(54906003)(8676002)(71200400001)(66476007)(82960400001)(64756008)(66556008)(76116006)(66446008)(4326008)(122000001)(66946007)(6916009)(55016003)(316002)(5660300002)(8936002)(86362001)(38070700005)(33656002)(52536014)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uoalfPqIa76qy9Ac70xuA91oPaH88tgddH0j2VzKZnMbW4MZtvf7ZwN3GRkD?=
 =?us-ascii?Q?7wxg9y8SuyfyNqHjUzyQjz/dxL0LrrydldgG+0yN1Z1E6gMGk0x0wLl/EkFo?=
 =?us-ascii?Q?LGbiAiSkU3qCOyUihIYc+Q+39zl2vmg0mNGPxXEw6FBm5849qDKF3SlflrYW?=
 =?us-ascii?Q?vwB1X4ZzibQMDILKtkxg/X4XlwhRb/fqAniB5iHjdz3DO/uqyg8LgH3kzxY9?=
 =?us-ascii?Q?wLF9QETBD/8TSU60XiFLZ75fLCqKtC3ooEb6IJPICXr7KSkvmjF5sQe60EHW?=
 =?us-ascii?Q?BGbvF6llga0Ad6AgCIn0VoyQzVX8gksY3QDXINmvSi16+WPN+3/SfrdR7O7f?=
 =?us-ascii?Q?o3Lq+rxX4ptgWjjD7KQPvXWCnIacc5OgzrOXGPnrsikAp6ytlwqSAGOJcMTh?=
 =?us-ascii?Q?rlXXADFsEXT5EUDKbTHZWAngWBWHkCwi1yHhZEDyXbTBu5MOi7KuPFlXNyKf?=
 =?us-ascii?Q?VthmBoJRbA/M4Uxp8IiJ8RhCW9fzZBQCOqQEaD/btmTsmSVhtfskiCTd9Ghp?=
 =?us-ascii?Q?OeJazg/dhSmy5tGWj3x03A093QuSw/N61eFMoNqLt/dcF0ZOZb/il8V+M2dO?=
 =?us-ascii?Q?qZ+xUJRxccYF0x/8BniwdAfrRazpISQgNQfZhnEpzHQ9XZcU2jKDzsZe7EnK?=
 =?us-ascii?Q?aW6UMYrROEc8si2u6v1S9Gpctyb57BdwXb2QaN2CZO4o7mNDH+nERSwtP8tT?=
 =?us-ascii?Q?BMIINVPvI/U6OOhcOvi+tZ7kdal805Skpqw0MnBL0+cOniZWVHmWtEDRU2SW?=
 =?us-ascii?Q?HLo7lQK6Xq5Ud/LAGo4I5HCHdc5KsZOuO2ecuxW1nfRguH1E6k4Aa4rkBPud?=
 =?us-ascii?Q?wUMLH+MOXqrLRG/hFK9jIBbAXRtz650VeCPzpORScQ1WOzQbRiwRBrmh+JJ+?=
 =?us-ascii?Q?ptPkgemBwq7n7p65ZgALvRtKz0JQ2aUef5xBNmq2xNJCt5W13Lg8mpVOk2cZ?=
 =?us-ascii?Q?edZb/baDi78xPuZbAzE+iZoAzXp/mNUl1GaEtdCLIkUi6OM7qvCRojvkZ6o8?=
 =?us-ascii?Q?j5ncey/ljIFY1RMok+X1hDGcR2fGFVeTcxZ0zzXW49LV5/2KRSY7g5z0q/sP?=
 =?us-ascii?Q?HoyHeCDb+HPlzPQ/MXjibaH6Ey/z5TlVwDcelQyImV4smb2TN8SCODLPYnpw?=
 =?us-ascii?Q?BT09uHDCpPTlcfeB4jxbRZmbyafYme5+FaFtfEpspzcmQwGO0TY93/8ePmkb?=
 =?us-ascii?Q?ufdnaFhfC4ad95kWgBwlTDTBwLU3iCV+HTFQm7zBiRlVU0y/7PNPbcn+OSsE?=
 =?us-ascii?Q?+7RkIlQcS4b2eXtO4Fszrj7nO1VxwGNanLcVN47Nf3yAEUh9xzWjEDnJuvHp?=
 =?us-ascii?Q?0G+Eb/9aKg+qlwp0uZvfWyjTdfmnB/ISmHX+cLFiC2SAeiHH/QForfQkzi7U?=
 =?us-ascii?Q?ZP1yXAB6rBCvouu0mIVD12xowvVafFigzIbsag9hUj0UbgllZqdttJxQkmLB?=
 =?us-ascii?Q?B2Cys5912q0Aab64tH3F1DS69QDvSTk6FvwS05gwuUAXX7hrF46xOSm1nlVR?=
 =?us-ascii?Q?dUQSnON7EundmHMCJ9fiQtvpkZWK40bGnKg9PuAoTlNu1Ph4HeC6sv4HCmBR?=
 =?us-ascii?Q?SEsQu0Y684ix/RuxX1PaYCUiSVBNm2ARdrSlf+s17zkiEM5qBRZeZKCDMuZl?=
 =?us-ascii?Q?M3ja8FF45weu92xv8VdXWz0=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4785472-4875-4c39-206c-08db623fb4a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2023 01:29:55.6102 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xRseaAciA6ferEOQJ7kiklbYwi/bn57QE0uFew68eJsMutlNbopORHJZulOWR1StKE1ISAwVvch3OjI+cWFfYvzeZpIJSzqErDq1dmPmPjeRWjAVSvJGbfC8naZRQ698
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4591
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685582999; x=1717118999;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=x9oiZ0ZMbgbRlHDL32H8V16fsWeHasupz9K9uX7Tpg8=;
 b=VKoZ9tjqNwF1RuHCljrfl+juWNgeMenQT4LpC4+N8VfVYXw9UeeJ/21v
 F8PhkTmQnRzQngwQnJXda2gM9IzC13hvIWh8knYjJzu/XbiEh9OrrDY+O
 xF46PglfJtJybBWUB/+zcklQWLj/77ekUGRJxfLhOCiyEQcXOg6wlb2H/
 VRsgjTwgbzYqDFeP+SXhCPHJfQfW8QjbySKEe3TQuWfj8MaVK5BFggsfO
 S2v/AVhsnxxn4PvvMoBiovBnFp8xy4utQEdguHTz2AQgjAe57uBaoZ9Qq
 lLa/6O4fTRPbPhJjEEPh8rUltNyBnY1mCESZYldyUuv8wFIl2fPlYspIu
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VKoZ9tjq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] igc: Add
 TransmissionOverrun counter
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
Cc: "tee.min.tan@linux.intel.com" <tee.min.tan@linux.intel.com>,
 "vladimir.oltean@nxp.com" <vladimir.oltean@nxp.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

> -----Original Message-----
> From: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>
> Sent: Thursday, 1 June, 2023 8:59 AM
> To: intel-wired-lan@osuosl.org
> Cc: Gomes, Vinicius <vinicius.gomes@intel.com>; Zulkifli, Muhammad
> Husaini <muhammad.husaini.zulkifli@intel.com>; Neftin, Sasha
> <sasha.neftin@intel.com>; tee.min.tan@linux.intel.com;
> vladimir.oltean@nxp.com; naamax.meir@linux.intel.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Subject: [PATCH iwl-net v3] igc: Add TransmissionOverrun counter

Sorry I think I accidentally copy paste wrong subject prefix when generate
this V3 patch. It should go to "net-next". My bad.

> 
> Add TransmissionOverrun as per defined by IEEE 802.1Q Bridges.
> TransmissionOverrun counter shall be incremented if the implementation
> detects that a frame from a given queue is still being transmitted by the MAC
> when that gate-close event for that queue occurs.
> 
> This counter is utilised by the Certification conformance test to inform the
> user application whether any packets are currently being transmitted on a
> particular queue during a gate-close event.
> 
> Intel Discrete I225/I226 have a mechanism to not transmit a packets if the
> gate open time is insufficient for the packet transmission by setting the
> Strict_End bit. Thus, it is expected for this counter to be always zero at this
> moment.
> 
> Inspired from enetc_taprio_stats() and enetc_taprio_tc_stats(), now driver
> also report the tx_overruns counter per traffic class.
> 
> User can get this counter by using below command:
> 1) ethtool -S <interface> | grep Transmit_overruns
> 2) tc -s qdisc show dev <interface> root
> 3) tc -s class show dev <interface>
> 
> Signed-off-by: Muhammad Husaini Zulkifli
> <muhammad.husaini.zulkifli@intel.com>
> 
> ---
> V2 -> V3: Included new infra xstats to report back the counter to qdisc
> V1 -> V2: Change per-queue stats. Driver still remains adding the
> 	  statistic independently.
> ---
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |  1 +
>  drivers/net/ethernet/intel/igc/igc_ethtool.c |  4 ++-
>  drivers/net/ethernet/intel/igc/igc_main.c    | 38 ++++++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_tsn.c     | 10 ++++++
>  4 files changed, 52 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc.h
> b/drivers/net/ethernet/intel/igc/igc.h
> index cb5751fab03c9..2a13e62b75d60 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -46,6 +46,7 @@ struct igc_tx_queue_stats {
>  	u64 bytes;
>  	u64 restart_queue;
>  	u64 restart_queue2;
> +	u64 tx_overruns;
>  };
> 
>  struct igc_rx_queue_stats {
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 0e2cb00622d1a..6a10ae1474fc5 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -112,7 +112,7 @@ static const char
> igc_gstrings_test[][ETH_GSTRING_LEN] = {
>  	(sizeof(igc_gstrings_net_stats) / sizeof(struct igc_stats))  #define
> IGC_RX_QUEUE_STATS_LEN \
>  	(sizeof(struct igc_rx_queue_stats) / sizeof(u64)) -#define
> IGC_TX_QUEUE_STATS_LEN 3 /* packets, bytes, restart_queue */
> +#define IGC_TX_QUEUE_STATS_LEN 4 /* packets, bytes, restart_queue,
> +tx_overruns */
>  #define IGC_QUEUE_STATS_LEN \
>  	((((struct igc_adapter *)netdev_priv(netdev))->num_rx_queues * \
>  	  IGC_RX_QUEUE_STATS_LEN) + \
> @@ -781,6 +781,7 @@ static void igc_ethtool_get_strings(struct net_device
> *netdev, u32 stringset,
>  			ethtool_sprintf(&p, "tx_queue_%u_packets", i);
>  			ethtool_sprintf(&p, "tx_queue_%u_bytes", i);
>  			ethtool_sprintf(&p, "tx_queue_%u_restart", i);
> +			ethtool_sprintf(&p,
> "tx_queue_%u_Transmit_overruns", i);
>  		}
>  		for (i = 0; i < adapter->num_rx_queues; i++) {
>  			ethtool_sprintf(&p, "rx_queue_%u_packets", i); @@ -
> 850,6 +851,7 @@ static void igc_ethtool_get_stats(struct net_device
> *netdev,
>  			restart2  = ring->tx_stats.restart_queue2;
>  		} while (u64_stats_fetch_retry(&ring->tx_syncp2, start));
>  		data[i + 2] += restart2;
> +		data[i + 3] = ring->tx_stats.tx_overruns;
> 
>  		i += IGC_TX_QUEUE_STATS_LEN;
>  	}
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index aa9f23b7f0c1a..056925a7bcdd8 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6109,11 +6109,43 @@ static int igc_tsn_clear_schedule(struct
> igc_adapter *adapter)
>  		ring->start_time = 0;
>  		ring->end_time = NSEC_PER_SEC;
>  		ring->max_sdu = 0;
> +		ring->tx_stats.tx_overruns = 0;
>  	}
> 
>  	return 0;
>  }
> 
> +static void igc_taprio_stats(struct net_device *dev,
> +			     struct tc_taprio_qopt_stats *stats) {
> +	struct igc_adapter *adapter = netdev_priv(dev);
> +	u64 tx_overruns = 0;
> +	int i;
> +
> +	for (i = 0; i < adapter->num_tx_queues; i++) {
> +		struct igc_ring *tx_ring = adapter->tx_ring[i];
> +
> +		tx_overruns += tx_ring->tx_stats.tx_overruns;
> +	}
> +
> +	stats->tx_overruns = tx_overruns;
> +}
> +
> +static void igc_taprio_tc_stats(struct net_device *dev,
> +				struct tc_taprio_qopt_tc_stats *tc_stats) {
> +	struct tc_taprio_qopt_stats *stats = &tc_stats->stats;
> +	struct igc_adapter *adapter = netdev_priv(dev);
> +	struct igc_ring *tx_ring;
> +	int tc = tc_stats->tc;
> +	int txq;
> +
> +	txq = dev->tc_to_txq[tc].offset;
> +	tx_ring = adapter->tx_ring[txq];
> +
> +	stats->tx_overruns = tx_ring->tx_stats.tx_overruns; }
> +
>  static int igc_save_qbv_schedule(struct igc_adapter *adapter,
>  				 struct tc_taprio_qopt_offload *qopt)  { @@ -
> 6130,6 +6162,12 @@ static int igc_save_qbv_schedule(struct igc_adapter
> *adapter,
>  	case TAPRIO_CMD_DESTROY:
>  		adapter->qbv_enable = false;
>  		break;
> +	case TAPRIO_CMD_STATS:
> +		igc_taprio_stats(adapter->netdev, &qopt->stats);
> +		return 0;
> +	case TAPRIO_CMD_TC_STATS:
> +		igc_taprio_tc_stats(adapter->netdev, &qopt->tc_stats);
> +		return 0;
>  	default:
>  		return -EOPNOTSUPP;
>  	}
> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c
> b/drivers/net/ethernet/intel/igc/igc_tsn.c
> index 6b299b83e7ef2..342530d11aae9 100644
> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> @@ -136,6 +136,16 @@ static int igc_tsn_enable_offload(struct igc_adapter
> *adapter)
>  		txqctl |= IGC_TXQCTL_STRICT_CYCLE |
>  			IGC_TXQCTL_STRICT_END;
> 
> +		/* If it notices that a frame from a particular queue is still
> +		 * being transmitted by MAC, tx_overruns shall be increased.
> +		 * But currently driver setting Strict_End bit which indicate
> +		 * that packet from the queue can be transmitted only if they
> +		 * are expected to be completed before the windows of the
> +		 * queue is ended. Thus, this counter will always be zero
> when
> +		 * Strict_End is set.
> +		 */
> +		ring->tx_stats.tx_overruns  = 0;
> +
>  		if (ring->launchtime_enable)
>  			txqctl |= IGC_TXQCTL_QUEUE_MODE_LAUNCHT;
> 
> --
> 2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
