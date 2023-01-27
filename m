Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8D967E5C4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jan 2023 13:51:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9740461293;
	Fri, 27 Jan 2023 12:51:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9740461293
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674823887;
	bh=DTR4k7IRVBJc0ih9T8ic54aZ+8OaDvg8iEwV748QA8E=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rsgYzoRmzxLNwr0zq4VTWBvOKAR4YJysS3+CnVWugCcXw1A2GC6ULJbV5SD/+yxIH
	 HU8UW3IpsTpU61+mr+3pQUDzuGvyBulVIVS8KKB/qbsMYv4+iCMSqsFNHzjy+OeLvF
	 i5/XpEGNSKSc4dNk5O83HqGrxxWa8Akvne2m4MY3BiNL/YrOTd4v94UyewBqXhAY6+
	 28LuuVP2+knFUO8VszXsZi5Fgx8hE4JPlVMruDaqAgbspjUkh/dEeHLX6/uHMcq01B
	 V/KayqAfui6zHF4wCGbUp3EwPrnrDZMfJSlhBDeQQ3oYi8PE188UE8ekh9Ns6t7wxB
	 avkmZ9dDKxGbA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lRW_m3y3Mdbg; Fri, 27 Jan 2023 12:51:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8ACA961291;
	Fri, 27 Jan 2023 12:51:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8ACA961291
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9EA6C1BF263
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 12:51:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7709D4010E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 12:51:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7709D4010E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nKS2jZPWsHNy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jan 2023 12:51:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B9B4840101
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B9B4840101
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 12:51:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="413303156"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="413303156"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 04:51:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="656584317"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="656584317"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 27 Jan 2023 04:51:19 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 04:51:19 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 27 Jan 2023 04:51:19 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 27 Jan 2023 04:51:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H0nNnESSmU8B+wkvV+Fh/4+wSntljOfzq6GLzPUtmXc6x4PScTQf0SYh84VUFAqLMsNuPp94VR1WF48TqSljY64VbPEuVZoTAiwcJLc76vVJZuHGNrj+Q8sDM8CYOXgT8/M/VkB3/6a2dZoM+HgWsYMnK54NnWL8PfHsRRnn6MeTGCtxCJgIXDCItkX2pFuWV61LtIKC2bE5qO5dCM+a2tBPjxFkrIOH9u5Y2uIF4ZV2jI2l2HjNh/oRnnEhBmMvqToRNmY11beidkwhn4AlSpV7EUgPx/C7f+uiaDtOnF47/37glWa9Tezr3BRcqeGjtf0vOMsvBLHMQXKeyg2+JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cXX77WbvjIgs2NidkFmmqbffAUxZTPP5fAGCvVLgNtg=;
 b=eHG5nUc9M8rs5Lmx6ZsPD7YT65f2JKd7i0BihP7+csBpuTeBk7cuu2BAz2xC0J9QfhjhMSKbQ4VBpSRhO9Il7glyS7L7QMtqIQv0ACykl38ncF7qH/2NcVdr9+kRbsrQfXZ+5GnPXJEexFUaMnSAK8pr30/qqx9s6fZhyJiyn1YuEVFh40E5UI6SMrS3TPibO3PYMlzksPm2gt3HQg2Dti0lzsb+MhepBG8w+5tScd9E1gGr0VhOj+66+MRJtKZ5m8Pq5K7P9xfuxcf8KH+Rx/E/IiUHMeeLwyA/iv9mgSIr8BG1TgQw7V5FmojHAfctjWTVzXSMRBOsoRg5NoYzLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ1PR11MB6300.namprd11.prod.outlook.com (2603:10b6:a03:455::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.21; Fri, 27 Jan
 2023 12:51:12 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.6043.023; Fri, 27 Jan 2023
 12:51:12 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v8 2/5] ice: enable devlink to
 check FW logging status
Thread-Index: AQHZMEFpY9UUkwft6Eav1eayiB1eg66yO2QA
Date: Fri, 27 Jan 2023 12:51:12 +0000
Message-ID: <BYAPR11MB336735A9BB78B07C648F0E16FCCC9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230124221428.114-1-paul.m.stillwell.jr@intel.com>
 <20230124221428.114-3-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20230124221428.114-3-paul.m.stillwell.jr@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|SJ1PR11MB6300:EE_
x-ms-office365-filtering-correlation-id: aea34aa2-339e-403d-2bf2-08db00652b7e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oSoVilInAKumJDTt52hZtRuQrdcub1Eo/yYSZ4Gco9kuDK/sXRjBbKj9YyEY48w/4zIAXJyx4tbLbSWRBQ97Hn6XLaimMvbxUwPyXJE6FahXFQMgeha0FZ36oBA/ZWKiz7nlmejJ9gO2LnbzkNbyyQr1Zy6LDVSWMhe79oczfxQoVFhUctIAW6+H+iuZEIFCMO2CO9HcWd9gVQGHxmAcDooa0W2gAB4AbjYYY8Mkt4IlBlan/9DvqHm7jecWz8tMfshIg5oSFrbGgQVpgTct1NK7eS8sh4PtHKh+hdfdzqZXno8Whg7SxYFpzuj+XNKDQ1tkdydnBWuQUfXOdjEhmeUA1/FklGdfbAhyjAO7yiiyDexjv9PuyOfB2NQZGgYaJZUKdqvtuNbQmK7EF0Z+mZ8kowCEy+ggYLwJcrBaFLs8dgWE9sPBX9TFnUBGNs4ovIYDa7XfnbCIWvJ4CO+W26ZKix/SN0g6+gFefRo5D4J0eupYi+HPoYlct1a4L0WUxh1T/dCMEwwAfPjveRl4xr5/FJxtmrOlG24pcaRgfp1QgdF+Z/DdPnEmf6adyWTPzxB0boicO+5y5tumZGrHhtS4Hgx78XfqEhpS8h7YXEHbVAahq8FjtkHkIpWZsmTvul0CFUuLbD4V3MHDjJpKtaD6BFQZacYMO2x0Vcw9QzuZd4QWA8RGYmFq+69FEJc128HxE/mRCCL6hWtBM4sTaQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(376002)(366004)(136003)(396003)(39860400002)(451199018)(66446008)(5660300002)(2906002)(66556008)(64756008)(52536014)(186003)(8676002)(66476007)(8936002)(76116006)(66946007)(41300700001)(7696005)(83380400001)(478600001)(71200400001)(6506007)(53546011)(9686003)(316002)(26005)(38100700002)(122000001)(82960400001)(110136005)(38070700005)(86362001)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AA8Mrz2nRGv6T1kJwZgco3t6D/6HLL47E+Fyq2AccObakpSvwA0RCwhBax6f?=
 =?us-ascii?Q?iMx5SvGL+fFXjESjEFV11baoK06JuQe6r8FtPEwQjtTDXbU8M1wgdKfvK7DO?=
 =?us-ascii?Q?43BfPE3/M/T1NRCRcprdt8chMhOpnWfhLwAsWTtP6Rfs1QlP/G6TYryvlu1N?=
 =?us-ascii?Q?p0q1n85Casjb402FdI+MxYeS2zn9DwEaYb0vYDeHRzuNZxzl68h1yTBlDrYW?=
 =?us-ascii?Q?8FSCq/tWKM/O79kBFpy01wrEjZyavd8lou5yDa1QUtEXBva9am1RfNMwEoIN?=
 =?us-ascii?Q?ceqIwj47R53308pc3fO2nN72Iurm3N2cVJjRyTA0iUqNWl6gctERzmHLuggL?=
 =?us-ascii?Q?rphs16kgOFXL1J/KpnnT7Bs+Bietdrv3ccq0YSDJ6BFAZZF2PR32IprcyfgW?=
 =?us-ascii?Q?HTZESX2lcN2cLxzwBD5CZBIy9b6x29I2eZFS9i8B/6zWdTH4+9vn/7GFhyrj?=
 =?us-ascii?Q?B69HI8EpkG1Sgk+zt3jK6YNxLZtqfGnV8E1Ewl1OGsNQidnmwP5BcfVq4oOZ?=
 =?us-ascii?Q?dzQZ+qNiUVxOCclwv5FfS0ENH7Z4aWNBLsCRFPasnCrZysPAxznf02yQFD5P?=
 =?us-ascii?Q?mZf7bL3GC7ytQxIhuR68SiGguQOsI+pXq/wZI9VvWtZxKvt2ZApZ/uO28PO/?=
 =?us-ascii?Q?kH9NHnY/G55gL1os6RUGGBMHOKVxeNUQGGdzbChT89bxbr2NktzE4fdZDB3G?=
 =?us-ascii?Q?0m7Pn9+mnymCdEeRPHmaAwDyGIQevlqzBkTwekbW3lWva1Mc57o5yuDBTldD?=
 =?us-ascii?Q?x6Q2aINRkUk+2zUa01vLNu3dwklaD+m+QnxcOSptZ80uPilLhJSaGqNqPSKG?=
 =?us-ascii?Q?6H3TVSyNFlnJq72qbOXJi7jkGbJSZJYFOVQMSr2SNHz68kk09f1AsG4sRhWy?=
 =?us-ascii?Q?IIBZKVxJNgLasywNPqRZC6F1DYeZYGZfTEjsytVEASdX7djcJVlrNQ9E9Ao2?=
 =?us-ascii?Q?18WmoXuNaNBeH8BdOWZtxZ15xUEKB0ukhpoiMKaGiQXMfGLQe5k9qj343Vpa?=
 =?us-ascii?Q?vubgAAULCCtXv+NTML/7HS6tPrN1LFhUOhrHKnNYvve+DMqf+NI5ICszfjEA?=
 =?us-ascii?Q?6wxmjD6S/pi/GR5XRfo8szUVXDCpvh06bDHSdx/4mMoO+PHhKBGO0+aUQjnI?=
 =?us-ascii?Q?JTvyrRIcYM9WqNO5EiHXeEXItmM6TVZFugAX9cS2e5IbQvNwpGzpf4jdD5GY?=
 =?us-ascii?Q?d6Q/H3Ztw7xs4lTunJroftakNvNNd3MC1LjL9rqhlxrn9drQ4BGfhadzjALw?=
 =?us-ascii?Q?yaza6JD1/m3w+TLBoctMMxvd8MOiCbB7zTNbjmiXLeTG01cCLeYlstpdv03h?=
 =?us-ascii?Q?q659WGOOw5DNCL7eaGnlzD6FCNOVXIfneMCXuXbNfZfnM6J+GyTPNeh7wbTK?=
 =?us-ascii?Q?avH1bpaPPO5iXOVNQjIJ+tsfO6PGkUc2I3l4th7guUq8W+77uHxPhsJH3RSl?=
 =?us-ascii?Q?Io+c4dxBW2vhetWUEjJrsMOCzYP8zFsNoiCrte/TCvV3nb8F965F+JU1z+gq?=
 =?us-ascii?Q?Y+IRuYpr/beuePz9DixEB63CB+3UTH39A6s9C7YOU6VmUW4xXch8CzmIa2wH?=
 =?us-ascii?Q?Jj2Wh4MULjFwey/SWwCc240Jj5bWZoptxhB/j4+K?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aea34aa2-339e-403d-2bf2-08db00652b7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2023 12:51:12.4130 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XuBhWWFkwH3aus8s6G19wBtggueZPdCIDl/bm1Hs4NX6NHJ9ifxPMhLVxUcMAqeXIXx8Fw1ir/DxCk5uqbJqDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6300
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674823880; x=1706359880;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=8j0Q4FMCIvVgHNNHxAVH7rcWoqsVWMOmE8skajkkt2s=;
 b=M4/AI/1lZzbW3UTXUpi+bvrxHsSZbZ3x8UHuq6kxLl3jelBsCPguZYf3
 2yrPADMg+6QQqv34McxWe5Fvk6nSfgBROd1L5eBUDdItJI9oWYSzXkaPw
 96U97HEz1iMUc1oxciuStVHBYUECSIONc+k+KvR9xVrXPTuCYn+AG0Wbf
 5Z9NELczSGstz0hc1zH8Q/gs0FHEpAjVYEjWGJilxz3MbMy72oRnOyOnO
 r54b0sBe2UKwd8Ml368OTl4ZRNQOJ/HohhpfC2/48BVGG6QMfkJIXIMGO
 1VGqgruELpOt9wviZShBhTJRkaOU6IAlYwrva23AmyFXWHJKkp7FdgkSm
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M4/AI/1l
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 2/5] ice: enable devlink
 to check FW logging status
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
> Paul M Stillwell Jr
> Sent: Wednesday, January 25, 2023 3:44 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v8 2/5] ice: enable devlink to
> check FW logging status
> 
> Users want the ability to debug FW issues by retrieving the FW logs from the
> E8xx devices. Enable devlink to query the driver to see if the NVM image
> allows FW logging and to see if FW logging is currently running. The set
> command is not supported at this time.
> 
> This is the beginning of the v2 for FW logging.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> 
>     pick bfdfb2dc6192 ice: add ability to query/set FW log level and resolution
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   3 +-
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  81 ++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.c   |   2 +
>  drivers/net/ethernet/intel/ice/ice_devlink.c  |  73 ++++++++++-
>  drivers/net/ethernet/intel/ice/ice_fwlog.c    | 117 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_fwlog.h    |  52 ++++++++
>  drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
>  7 files changed, 330 insertions(+), 2 deletions(-)  create mode 100644
> drivers/net/ethernet/intel/ice/ice_fwlog.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
