Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 493997787A5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 08:51:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9155A4031E;
	Fri, 11 Aug 2023 06:51:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9155A4031E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691736678;
	bh=G7G6TkoNE/n3ZkDBM4J+xqQB38O/YoDfsF8U/OMYSV4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lX08H/iVANkDt9D3RFV5wexx/WIz2OevgzS8jlgAK6HcXRNKo56Xz7cS2kgj4HuGq
	 hKv/iEe9jx69mIzPNLO4e8TLRuOXRJOFbvfrzVxs/FtXO+2xojcmQ+6lvlabGZx0tv
	 e2ORUTunuYnygn6qVrfk5KxDPLtMMxRW8qRiOOTqGNmfWqUpFOvcvi1relOOkVgmk6
	 cNAZ3s4gvoBmkGAWvq8SWZOTdqZL91W/ieI7pW8hPXNxyT7u82mlt+01ST9uAWkmA+
	 3OwagN0B1Z/LNx+0ZHMu5IeoJSkKSttGpDupZU/84/Pq/gv+/BwzrcmReTgsAHMVoB
	 dY/xWnqC7mtQA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id guBt1aKnxoBn; Fri, 11 Aug 2023 06:51:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F9BB400D7;
	Fri, 11 Aug 2023 06:51:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F9BB400D7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 941401BF5A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 06:51:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 54F26418D2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 06:51:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54F26418D2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HJ5TSMC7gJwH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 06:51:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7719A418A0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 06:51:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7719A418A0
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="437950259"
X-IronPort-AV: E=Sophos;i="6.01,164,1684825200"; d="scan'208";a="437950259"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 23:49:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="979136984"
X-IronPort-AV: E=Sophos;i="6.01,164,1684825200"; d="scan'208";a="979136984"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 10 Aug 2023 23:49:53 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 23:49:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 10 Aug 2023 23:49:52 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 10 Aug 2023 23:49:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CL8vB4AkNRBP7vVbpi3Enmmns3zHo9VK+yqAyYxx4Ba+fhyk65afqyv6Wd4cE6iJQDbomWVKPuEsFTy3bNixZwth0mp2ZwHGvDr0CrjhbI0J09MO07w0uWPmzwIHfCn8HjdUK6vJk6J6dEjbaH7CFTtJpYs4Pq5cf0gdZU/mhShmUpxR5T8ULVc0jDHf4FgfB0JENzOh4VTDZTSvX4swtmeNBu3mb4nMq8DzNxnJG316vhw1PF065/gfYmYYPX+0e8sN5ommeSy5QOqFXABx+FmuSS7DkYO3P2ynyx4D8RLSvIKJRw+wYqTzwtqDw18v+fMnFu1siafyzVLlVSVPuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8QSU2HT4YVC8NkWVqbu9d+hQBJ1gJJjaw+xCiwlnug0=;
 b=WiAaSlHSYPOZPqlID41znY5D0uDDQjMLYbxv9XIg8o0dstH0+UAabbWue8E11dwW+fgD+8YpbQ1xs3+21DHY5Qf5YmXSBdfHzNdTaUNMI6+pbIq698lgLIzCFhsxRcVH3WdpL2d/al46QdhKir10wqVL5H7N/zgrOoj9lX84MleCio4uEHM7wfFbo73f/n9DHGWP07n72efg5v2WjqH2Je95TEvHyH59jxAR2IZG/ZEwRMJneTg3qzkTWwXuDxsIomwQL/V5AmcbZJifiI1FlYfuI48v2GdKEuwSzgN9c7p4sKXuTij8ovI/kEZsdQaViPUxI2SkZkdioAK2JIrkVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by MN0PR11MB6303.namprd11.prod.outlook.com (2603:10b6:208:3c1::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.30; Fri, 11 Aug
 2023 06:49:50 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66f1:bfcc:6d66:1c6d]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66f1:bfcc:6d66:1c6d%4]) with mapi id 15.20.6652.029; Fri, 11 Aug 2023
 06:49:50 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: Remove redundant VSI
 configuration in eswitch setup
Thread-Index: AQHZw5M8G4fpO9ptr0S2oZm6eTeFDa/kuMiQ
Date: Fri, 11 Aug 2023 06:49:50 +0000
Message-ID: <PH0PR11MB50135669F52705907B92C5E99610A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230731024201.56257-1-marcin.szycik@linux.intel.com>
In-Reply-To: <20230731024201.56257-1-marcin.szycik@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|MN0PR11MB6303:EE_
x-ms-office365-filtering-correlation-id: 7e97e4e5-0647-445a-6197-08db9a372903
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cvYL1uOUBkIe30p0Ed8dDWa/DtSIfTmAhcb3aDf3selHDv6RsiJPen1nRbiGDY6HRwqOYqDxVkyYKmw8rBK7OZDebT3AlH1g4woOwzQZtijI0cGKpADelpQv/ZS8nSJgOVGSWt3UmHGPDBNbiHz5N5Y6qR1iJS4eQaUKtSMCAFW/sEDnfaQd1E7dgRH7JHdaElDDWMk8IoaLl+R0+53LZ/2VHatLhjZltMHxvNK9MzQFy3c18D17kLglU1U6taORxXZ+IDVUvcf5EiQoBYj085x8U6BsNb3pv7bLgcNTuZ/b0DO00IMe4p4/1wEHZDJBwnuNDSdNzVgmz/WCj4gB1EmszYoysy8z9PeOpadugymwz3AQi6oNKnrHh0Q6fmYqFfBT0IyTatAX/9g2hKHOg8HvONRIARv7l3CbTWZ04zZ2KzxBG8bX7kLuPDmft20y7SBFeUBI1K7RDSsWNlBgV/db+90ruLvYGPNiwgTra7zlRGFFSFQ9++ix57WWB3uLRo3V+M/LmlBW1hgqAN0HLmkEGOyA60Sz15HzlG4fLzsavnEsrrL/mGm2aQr5udVqo9EK5gaoObbJkUUe+9bMG3x5p3ifkRyT07jJbIriifurisIWBX3j1TCCpTXjWNoA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(396003)(39860400002)(366004)(136003)(451199021)(186006)(1800799006)(55016003)(9686003)(52536014)(82960400001)(478600001)(110136005)(38100700002)(122000001)(71200400001)(7696005)(8676002)(41300700001)(316002)(66556008)(8936002)(66946007)(5660300002)(66476007)(76116006)(66446008)(64756008)(83380400001)(26005)(6506007)(53546011)(86362001)(38070700005)(33656002)(2906002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?grd56YPb8KRHCxQj+KpiKh4OP40F9nE80aI44Lxp2nc6voho+skEz7ferjmp?=
 =?us-ascii?Q?lRycauul4ALuEecR3AmSgnffGTpKw5i+ZVAIjvfCq7Pe7AdG2zp6q6zVzmyh?=
 =?us-ascii?Q?TsYpt1f0gWk9AATbGYfSQQj3a8PTu0zlTONfGWhjsbKg3teKXHSWELPBH6Q7?=
 =?us-ascii?Q?kZj/oSGE5lYMtl5Sd+Dqw9X/jRE7clGjn92VJanih/mVUtop77Lck35VyA2i?=
 =?us-ascii?Q?ncLoODTBhi8QENAijnIBiePF3TtwLXb+nhhTbE287Vk7VasUxB1I3JdvQ0Xu?=
 =?us-ascii?Q?S4ISMSgEN6l1RLLAxgyX2BTkYUPr52/dt/geMv4+ALqk3viwi5yFq6kmYQaD?=
 =?us-ascii?Q?4S0bSoZO0Cdg4ubiBapD6dkOCPozVQbxt/WBEKqV8VcbraxjGf/vGT4a3hGU?=
 =?us-ascii?Q?90byoSGRQ9vBw4NvPMcmQchPZh9AT7pfw4nuNzFplmcmLefXxPT+u2kN3YJ1?=
 =?us-ascii?Q?YhiTyKjRljBAjIeGRvAgrQK/RVkR2PhTsj8XNdc/gqtThVz9UzZJBPKm4ryy?=
 =?us-ascii?Q?pQz2BfKga1bBgf1fL7pl/L2jqWFXkMvwFq24ZiRq6gLolh2daeGvLHZzDIZj?=
 =?us-ascii?Q?UWMDaRDnetOVs+r8/YoOuc91D+oK1Bontw8TNnkEKB4JKY40VZTeY7zftq80?=
 =?us-ascii?Q?xPnapVhj0t4ZjBUm25x7oKea1X6eWtXQQJiE2arvRX7PHVcLpP/o4l6ZHw6R?=
 =?us-ascii?Q?9gJd9qbhUexhggbrMsU/sj2mkmxFLO+Lj9RQ750wuHd655jOBpI4Ladw5981?=
 =?us-ascii?Q?aeGL8HKA1M5veMc81D/IPCr33nx762sJZ5TcIZA7O+I2iXPiSKQGFLGD7BE9?=
 =?us-ascii?Q?bgHy8Feylb3NglJQQOQeHU7XAZ+eRYAAEt45+MaYtocwOl3URqHrY4NSmacB?=
 =?us-ascii?Q?HH8hs7/0lXStBmsSNvmnm6SK7s4C613v36yCaGXNCXevqxcujRDEa8TFd0dh?=
 =?us-ascii?Q?pcfVziy7YHQYlczm1bWDtfBva0Ro29p8soPX+D4nDj0VVrxsaiGuB9JSsAiY?=
 =?us-ascii?Q?6DwUJcxpdaX4o6o2GTd7/CNsLhDYQ16aQziSTCHT83wmIEtYpvBgzt0j2RKW?=
 =?us-ascii?Q?+V1Q2JUaDXhe9gVId57cmiodYkfWHr3nnYan8NXJkYlZpqCTWM5+u789qnpZ?=
 =?us-ascii?Q?MztJv2CNlIv4b7iA6RJ+q/3RCY0FyLDhI0JKPb1JPbajuZnFN1frWiINY/OC?=
 =?us-ascii?Q?9U1sGEwwcFBhDiu8RgT6JPOy28nTcL2uxnRSsAPsTEgh2f+oAGkfhvq06F/s?=
 =?us-ascii?Q?gJLaJd/5gE+2/q9rDkmIMizigXkUgUVm/1hhFRKWVbpOHUAHhjMNb+uPBW/M?=
 =?us-ascii?Q?JpWbRLOYTxHI8LHMFB1QOn2mjyrxGDHB1svNNJAJXC95QS2F36yqDPhCtFhR?=
 =?us-ascii?Q?vJ2jNUJe7ZgCQX2qI6KFZEjRu8zZz74vjEr9Q32YhKFe00bDLrGjw0w5fylM?=
 =?us-ascii?Q?uIKiL5ZIvRSn5eIw5MV5zyYD3+e5TYL3maQ8elJYNTzVehPj5vPb1HGZ3U5J?=
 =?us-ascii?Q?dVGbFQohqphCTf03+VS/d076tvkjEKh/N8Q83swNR+usZyqygKjO2jVOMSlc?=
 =?us-ascii?Q?n15Gb/a/uTl3/OmnPRZA6pAwsCTScqhHUE99sZUFyUU6qCez1KOdU2yLZarK?=
 =?us-ascii?Q?tA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e97e4e5-0647-445a-6197-08db9a372903
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2023 06:49:50.4644 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dZ52Nhb5yQ/1+/+s8642jTFaXtSjpdxRofFzv6hGcs1vE9z4n/6OEcx3sruOFoyy5vm7XRRhSvA7xd0ykNOIJFFpdv/uIpjHTb9dcnB/Kx8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6303
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691736670; x=1723272670;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=j7qoQN3qwd0NOWCx3cxFoQKNCQ/vFRKSXrj8u4iZBdc=;
 b=W3XnI04sf6X9ZYp6xtx+gTBBpjIT4guck4YVehcTJWi7/O/jj7XbtU+V
 WG0fIMoDlzlFGvSwMG5DngjS0WTKo7N9H70N7fsT/iwKkUBHKuh9U4JDd
 8XPUiVOc3Q59j276t1xi05tBsXnOEf9la8DOmPJnqxUdq8NORPCkMtla9
 7uUb6P6ejTHOe2CQ9qBH8qit+VkDK6tetltVM/Ec2FRIUSRBentxey9Db
 ifHzkuGEUaZoOoTAJygWv44aRXYpw5f7NRtkLq77rBjOv/JqYvSf4DVDM
 wGHKIZWKAZ1vBohXjDDmj+RfB+FO151rC/OOKMiZ+8yBGsf6w2pZ5zg4z
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=W3XnI04s
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Remove redundant VSI
 configuration in eswitch setup
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Marcin Szycik
> Sent: Monday, July 31, 2023 8:12 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Remove redundant VSI
> configuration in eswitch setup
> 
> Remove a call to disable VLAN stripping on switchdev control plane VSI, as it
> is disabled by default.
> 
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
