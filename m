Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3460C734FA1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jun 2023 11:24:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18A6161142;
	Mon, 19 Jun 2023 09:24:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 18A6161142
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687166648;
	bh=ePorkzr0hwj8CiJJrbVs3SwBjyXTc6EAATJ3r3Uo2dE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3f5DZuo8TTCeUhyZEjE9VfGrbNXub46/kd9c5wb7iPf7bJ5rcSurmXhiALWKLQwd9
	 1HFyekTQE5+pBjZWbSkW/v8SAOERooQ6OAOAbyq+crqBHONoR+6jOS3Z3g1Yvy/L7/
	 LVuNzobRSYPmyVYIARkMK39j4KmrrU+0cQO7DQxlprEZWko7uI5M/XcNLC2wXPtuDu
	 4iufjQQe27r9SCXIL6SnWcDaeoBrKwpBjgQl7Jd/asZuppfzLLQ6kAqLdTZrrzOrNQ
	 fMm/MffnKhI3zp4ryV8JILDBwRFrIRcBkMIforyEl6YF9Jk5zFyZ0MsEe8J2z7e7ZN
	 eWbyKVMFHoW7Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J5O8iFjumfkb; Mon, 19 Jun 2023 09:24:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D300D61008;
	Mon, 19 Jun 2023 09:24:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D300D61008
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 435591BF580
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 09:24:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2794C40497
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 09:24:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2794C40497
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Bt4Q2OuzTTL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jun 2023 09:24:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 32420403F9
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 32420403F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 09:24:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="339924369"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="339924369"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 02:23:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="803558208"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="803558208"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Jun 2023 02:23:51 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 19 Jun 2023 02:23:51 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 19 Jun 2023 02:23:50 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 19 Jun 2023 02:23:50 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 19 Jun 2023 02:23:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AArI8goyK2k2MRlUDwQe+mVF/kPQufFARVj5u0p/skIC9VnQtMQOmB2SVl0F/9iaAUj3A13V6ruJC2OeyYdSOFpSuyzAPEchSTsOcOk9/5qziWF2tJBG1CuQke2ix1+Q1vnBaYdVGKxjuElkL5gIUN7ocIHkm2K5TQi1sUefQcfAPgTdk3RbThNmYf1kedFzeme/vYW8pdlw2t6yk88aW3aFEsoZ9+iXbOGq1AZMeVPLDC1MkQd7WJ+JL7H9KsVyuSgpH9nHKK3wnm+5ZZBWqrRM8lslzsPisPOKZ0tG3u5SOwsaSNoj2eBiONTsfRkfh3IsUtPL3O+LQNAwGzL2pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vs0lbrXInkIAWrZQkDyxDH08eRZZotfGVFQRN/76CfI=;
 b=jdMMNaRPxPFC2QHxtsb8PkQsMOGBGj0ZFFU1MsEoWPBfAPo4H81pSxBsTthz+calV1iU7nOGB3UvC/RX6aM2Bdin58NHWzdr9su/5mlNUB+P+lFsYRsOT7R3ID15TIM12QZaU+Fl9pGBWKvVgMONa8wqfvRCSh/MxZOwEuCBB7XkUTf23H0JY3U/yvQ+ycarJx0ItWFzZb2rh3j0/GVbDtfEqkXB5Nqt1UjQF0ebprMUYpHQoxcEX5gt7Q9FsTnu+WhuMDzm0Y3eb7AZiNt9CMC0Z5/MiKMCp/1N5sS4Zk5YGQMt7PIdQKoQay1VWSjPG6uAJbwCjibj33Udz0W2Qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH7PR11MB7478.namprd11.prod.outlook.com (2603:10b6:510:269::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.37; Mon, 19 Jun
 2023 09:23:44 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f%4]) with mapi id 15.20.6500.036; Mon, 19 Jun 2023
 09:23:44 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 01/12] ice: Skip adv rules
 removal upon switchdev release
Thread-Index: AQHZnd/vDHAfLAj6SE2lHQahR29HQK+R46ZA
Date: Mon, 19 Jun 2023 09:23:43 +0000
Message-ID: <PH0PR11MB50138C1397A100CEF0A31056965FA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230613101330.87734-1-wojciech.drewek@intel.com>
 <20230613101330.87734-2-wojciech.drewek@intel.com>
In-Reply-To: <20230613101330.87734-2-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH7PR11MB7478:EE_
x-ms-office365-filtering-correlation-id: 8ee70e11-56aa-4d23-d6eb-08db70a6e0ad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZcabJowcNS5PykbyQRkf1shl2m0ZhuyYwbCQXR43Gcnek3FCxxLlZ7Ncw0+LWkvBswiAZ4HoarWpGdU4m74Lt15fN4ShnZ9u0eEsHHJrZhvzekhKX7SBa1FzPuSiRjyjLzQI6kZWoJFSywCbC7DMv61FgNqeuY5bxIy7t3kYy7e9Ft4I21+TMcdTqiQJ5Xw4t3o61pNHQ4sQ+q6gHQWsuvqfVC/P6xBxT+Slva4ELRhLzNLJtWTJBBDhO4aicDzRqD21aMoKinujLWEW8pJzJVOVpnTnQPrF5uhJOBg1o+A0dh6jzlwJ2Va+YZYyiJSMDi0PTEZxuxM/e9Saj8cFzQRxun2ILPCnKohPx747U5IAbNX3bWe4L8xZtXwZ/vm8Jk/y4eraKWeNZI6O5JbrBH9POqDSUSTO8izTUFldXgIEGG9Seh7IHA7vb0Bd2Anc97wKwJU/J0OkaUGgjrUwQ40IabFdhPxZP7Yv1PBXuAflzeIprpHnUxPaMf+8GWwPzJSQ0pX+A8AqLYXKpswh2WRHggPGk5ikJa8yeqqAGTZg9Tpw6n6fOB/VWYSysTjjdzdIx9edOPUxjG0MD4zbk8e88K+1boQ0XsmiEoWX2hs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(366004)(136003)(376002)(396003)(451199021)(53546011)(66946007)(8936002)(8676002)(64756008)(66556008)(76116006)(66446008)(66476007)(38070700005)(26005)(186003)(9686003)(6506007)(82960400001)(83380400001)(41300700001)(38100700002)(5660300002)(4326008)(316002)(52536014)(54906003)(7696005)(55016003)(478600001)(2906002)(4744005)(33656002)(122000001)(71200400001)(86362001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qSWajilpUMTPdPp0gGN/bW4GNEvSWSzavRg4fUICVW9vQmHnkvhMsyQXHUs4?=
 =?us-ascii?Q?k6OiBR/K0r3wM/2CVBvVdw3NmwXNWfG4z8fbdv3KV/zNru5G/Kw2/OR06pT3?=
 =?us-ascii?Q?sxdtdeI5jJ3TXklBV4YA7aOXiYXKoA41gmgqnT4GKOMC9gKfr0OIlBj/AlIY?=
 =?us-ascii?Q?CKOg6WKIH3AL/YoMu97wfKkKkTZ54hvu50QGWSQLuB4im+UB5LbPwAGielD2?=
 =?us-ascii?Q?u4Cafhr+EkPSUXIXuVuCMeCFK/Mgjm5w2V2tX5k1txKGF11H/IlWpBtR4/09?=
 =?us-ascii?Q?Rgk23w6cpc7HFkKihgDcvLc0RdHd8vCixG6mNJxizzZExeqTcWkoISv0eeoS?=
 =?us-ascii?Q?NmHMheriIZjjakT0AI8y8H3vgpC80k1Dr9doAcaNdguPJZkGK3O9CTd8loUM?=
 =?us-ascii?Q?U//PxlLeG7hQ8rnO9A1rlsq7NEJNiD9c6+P+qG6ODAW7KgOhW6wTUKrFndKb?=
 =?us-ascii?Q?Ln6HQ+Dq6TTcBQKrK4+s1MJnBNaWkmIk3yW8TTCMOZCYWqezYyqo05JtEzoo?=
 =?us-ascii?Q?c0QdTdoJJ0keOeTgDQnJWeesl9xQ7WHXEYEIK/HFnwbauN0r7Qqnl1zykQSW?=
 =?us-ascii?Q?Me7vxi9t3r7zV7+Ymzfd9lpvZabl3Y1572jnQmdLz69Qvke3p5/6hfIO0lfv?=
 =?us-ascii?Q?+nbAuSC2G1W1UyDYGRqeJUi2yEQ1AE+IaXUESQI1GPp7u4/Grx/gqhXvaLY5?=
 =?us-ascii?Q?fdhKpLvv060stEH9VokfSC6dV9ARs7Dq/AWglhuFXCW0wNmhGmiPE4TVJBl/?=
 =?us-ascii?Q?+TnVCc0WFz/zFMgbF8fbFun5ddrowVNrj5JaaZOL6qsskjnwJwsEBAby6ukg?=
 =?us-ascii?Q?m3/9aGIa9O/3MfNYT7W0PEIlrXvLz3++ZADuU7juQraNd5/kBfCb8DBlVr/7?=
 =?us-ascii?Q?usKBqVnj+6KzfSLX/7w9JHd9yrn8MHM6VuGkovRHYhqoyCPDOd5BH0R5tDCC?=
 =?us-ascii?Q?tSqsyI61vwGXj9fKEVr2aFeX0YVkXgEvP081UvjAvhSWTXlq/sO1K4+yBMQX?=
 =?us-ascii?Q?BYF7ufu00kz0g+ZY0aTuNJB52szayDHpT3R6rUoqW1+mAxpFcuXPUB5hjhfL?=
 =?us-ascii?Q?wzR6+1GoQKAxeBRzM7P7tItQxRPnlb/nLLshM86v+lS5GVQeCLXPQTdAB5tl?=
 =?us-ascii?Q?06bRwKjzwm30qj0agZjN965deMm8XCs9aCFXf8ws12ou1WmZPGuWHcvZZZ9C?=
 =?us-ascii?Q?2wIVJ1Q7UPIjvy+M4f7wLd2uKcTYaR2eSzyTSFJEgr4FnX8xQ2l9YgEduC8a?=
 =?us-ascii?Q?waKgtSfO7nD+D50fsbdQ3HEgctrKTvudaOQf1YISaxCOHdFUSihrHyI26hLX?=
 =?us-ascii?Q?NRQu+VBeB8a9oRgFixxZBa/neOS930LBVslCT2glVRn21GCwFRpWSqm8cG/V?=
 =?us-ascii?Q?lSx8LXuQzJu+7T8VSl0jAuycGilsqEE46UefFeJVNZ0644UpXUM6R7Z/vOzS?=
 =?us-ascii?Q?1E36R1uRFNcZS4k6G0Jcz2gQKuUxSft7LbmSH0PBh00dxn9mte/5lEZ4XeTQ?=
 =?us-ascii?Q?ZH5KIzfEPZdgBoDioA5JtlkY9UMjw7d3xpyvQxW7QAMArabU/B8DNir45iQg?=
 =?us-ascii?Q?swtvuJ+iKk3MmiVp1/l96OWEhXV5Dmu59SKQPLJ9GJGONKFQnuKGvVtWSp6E?=
 =?us-ascii?Q?Xw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ee70e11-56aa-4d23-d6eb-08db70a6e0ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2023 09:23:43.9140 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N7h+BDQbx9hPT1CFPYjIPhnEdxvzBSNmcDom5VHtUDyxbKUk7rp/mHrOSh/cY8x/ZL7RT4anLonqwBTO95Ho6rdVANXTEF3Kuy56PfjbOew=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7478
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687166640; x=1718702640;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FGii3i9v2Ug5Dbc+oxnhvfc5XvU/L4i9nUXD5/9mZY8=;
 b=f2dptG5yLbKevG8t0B5cv4EfnaPAcZtUKiDwByj6pYYKZfeIOLHRu1w6
 yOuk7kOzHlDzv75nuOJWOYEAZ8ng+gaLltGGlL7f0Fr4lKKHUYNQq0iQu
 YS4TJivsEcHFkbaDAPf0Ldkpia8e6/T8MGhYaQcZXegQXwbm8Lr+gOxcs
 Yu2tBBlXL0ewzTnAgYSiLo7cUQTVy5QV+s8IzacYKfTuAyeBqpfs4f4XK
 WyV8EMfVbilEDiSHJh6NFJZzhZl4NfGZqKHJZZxsEEbBdhdjFTXZQLWFi
 K/hqLnzuTzhFBUwTP+2RP2w7AihGKVk0PZbJlrSIVYhHYEh2CZL6Q/sit
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f2dptG5y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 01/12] ice: Skip adv rules
 removal upon switchdev release
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wojciech Drewek
> Sent: Tuesday, June 13, 2023 3:43 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org;
> simon.horman@corigine.com; dan.carpenter@linaro.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 01/12] ice: Skip adv rules
> removal upon switchdev release
> 
> Advanced rules for ctrl VSI will be removed anyway when the VSI will cleaned
> up, no need to do it explicitly.
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Reviewed-by: Simon Horman <simon.horman@corigine.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v5: remove ice_rem_adv_rule_for_vsi since it is unused
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c |  1 -
> drivers/net/ethernet/intel/ice/ice_switch.c  | 53 --------------------
> drivers/net/ethernet/intel/ice/ice_switch.h  |  1 -
>  3 files changed, 55 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
