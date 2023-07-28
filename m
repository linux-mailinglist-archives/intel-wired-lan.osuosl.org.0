Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 732747663A7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jul 2023 07:31:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 103BD61195;
	Fri, 28 Jul 2023 05:31:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 103BD61195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690522311;
	bh=Kqb9tDQrR7ZeW7COYC4a1o1Mcsg0PPo7kDeM3gf2onE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uosKxBkvnHgZhYusY1nVbETHo+fRIJDE6Sd6k1wY8HkKROshCP3Fvw6qwI01XTW06
	 wFJt3kaREP9dyCEiDy4zMlyWjo4G2voYAYEyMYZNGhOwmV96s9onNDLUpyft9MhE2u
	 HASHWa+muKnGv95iEGMHdEYyTej+eceYkj+mJHwKuDDvtTB+aHCvze0fim+jdxIqSJ
	 oMiOrMsZzgi7hMCv8Oued5iGT0b7an9c1KekXEvL4KupLS09it0N564mjnoFoAz5Wg
	 iPfd5Hn+8QDQxIN7acqHGs38bSKeIgPJL6vtzt/fHjcwleKQ1Q5sVmsfacFGfpk3wk
	 EcXeBkqcCmmFg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wbNd9fl8s8jK; Fri, 28 Jul 2023 05:31:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D327560C24;
	Fri, 28 Jul 2023 05:31:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D327560C24
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 037001BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 05:31:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CEE3A40462
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 05:31:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CEE3A40462
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DMKbuJUfHSLW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jul 2023 05:31:44 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1E76040127
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 05:31:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E76040127
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="368527424"
X-IronPort-AV: E=Sophos;i="6.01,236,1684825200"; d="scan'208";a="368527424"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 22:31:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="721132588"
X-IronPort-AV: E=Sophos;i="6.01,236,1684825200"; d="scan'208";a="721132588"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 27 Jul 2023 22:31:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 27 Jul 2023 22:31:37 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 27 Jul 2023 22:31:37 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 27 Jul 2023 22:31:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G08hcuNxK4ZA0Je9UuhaTx0wq9HXDOWjs3CbqwmavC/vuZg11BKpIqJqPoxE9tCP44BGkza8Oh8ZUVoYyZ9zbCGP0QSlvE2K8plcwwaX1MQsom4rY0Pzs75QRNNcJC7VWnaoTEex6GEh2BRtiuuJ2jEDBUu9rDJlvQqcTcPsrvdPPUxNb2O82vAEjWCQkvMQUclaf87g8Vvt9hxp8WZ8LbDicG+iOK/vKbKmKKRIe6KSwxHGSy07C1ImnIpH6abMvbwy3eH9myzLFN0mGvE8ztBvwt4+F2JBVYiptg1mDM1vd+wRBztBJbJ+ujzZlVkUmNMOcbiCfPLFmjYRqm5bUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rp2bHp2h0FajLW9Jy74+TZCkPly1BH/q9EERnoOo9I0=;
 b=BvvbTsIs/1M26pf5OfVgVFTKewYLdH4cMiZ6eiwmk5EB+zvqaZgli1eD7BPF7iKJm+0m7TMg6oZoUq/B8Vr64d1mEPmtOk0cAShSKyphDopma5JxuSB3FOWHlhV3i/yYmT0dfV5yTKzv+5uVVznCQU0+G3r4IIoReG8Vnopfx2WVaqq1vBbOKrA+1dhfDy7ENNBPYT4F1ANI8a73c3NrDALKZJDJBjytPSuf/bCITRlaZvICZioriT9+uHKgjuma/8fONYs429pYzNEDPPABUQbo9SKHWFV0G/+lott5qhy0XwTdg4McobONzZr07RUwX6db9XStA09tPsL9xVwdNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by CH3PR11MB8415.namprd11.prod.outlook.com (2603:10b6:610:17b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.25; Fri, 28 Jul
 2023 05:31:30 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec%7]) with mapi id 15.20.6631.026; Fri, 28 Jul 2023
 05:31:30 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 2/3] ice: retry acquiring
 hardware semaphore during cross-timestamp request
Thread-Index: AQHZv0I5Q612mPP87EGIGW8kVGrmmq/Oqp+g
Date: Fri, 28 Jul 2023 05:31:30 +0000
Message-ID: <BL0PR11MB312259B5F136008116D54F41BD06A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230725215048.1311584-1-jacob.e.keller@intel.com>
 <20230725215048.1311584-3-jacob.e.keller@intel.com>
In-Reply-To: <20230725215048.1311584-3-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|CH3PR11MB8415:EE_
x-ms-office365-filtering-correlation-id: 02063eeb-67e7-4583-5a3e-08db8f2be5d6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KX88hrMY8zRRaCdcwF4/VA8Ma5rUcohZKfSRKA1Q2uzmXga5XI4PQo9+1f4Axul7g+lygE/GfX5WjuJSxKdH0shaPanU0/A636q8IzsZ/T5kE1gNz8NIY//KunM341vOb8uKfLw+AyIv/DZDBt97pufvDt/A1HNh7UaAQxHdaIG8r+VBPqHz8/QUFSNWv126orEOClUoFEbWQYXQGXZweS3tgiWq8VCMhN1e6Os3DzK+9mCPwQ+sNwJXa/7VvUiRvcKdyzW5Y+vsdHLUPRCRb4lx3ZWCSKvC+q+M89bWXokCEKXdY0m6kVKKMVcop88Oz/E4ac4gX6comLtKV+KoE5MSsDe4NL/w9I0M/JR3+5EySLSUTB62LCOY/udQZS6i6riW54pp/NOISD47AyUEtLNQDcw37rnuuJ1mqw8+EbuTE3zf52RIQptUj2S+KSuBu3vZk+W0/6lHZL2pEZWvFthO3C/vn4BRjp4Kd3d+RZmYQ/bCeMrImCU35kc7RuazG+tUoCdFBmhwzUEb/zhjGKtzz6c4WO1tovTnFFWkwU33bqbX0NMMVLRVZeMJuA3R2gPM8PDZmYdLUjV47fjnC4XM2zm+gJSTQLLBXwEQaXq9KAARVG4orOKTlCNKpxVN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(376002)(346002)(396003)(136003)(451199021)(107886003)(71200400001)(9686003)(316002)(26005)(7696005)(4326008)(6506007)(41300700001)(53546011)(54906003)(110136005)(5660300002)(66946007)(8936002)(66556008)(64756008)(8676002)(66476007)(76116006)(478600001)(52536014)(66446008)(186003)(83380400001)(2906002)(55016003)(38100700002)(38070700005)(33656002)(122000001)(86362001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MYGn8Pw8J2Tk7RH0F763u54yfOv9ooXSKl00YuiKem8R75KPmdBW095uFXrl?=
 =?us-ascii?Q?TqEG0CVwyxmkwKskrVABZ7x9xHZma2gvxxZhO5aQcZfDXGw1GOESQLOh9nZv?=
 =?us-ascii?Q?QDdfjW8t0p9cKmzaBYbF49Ya21+4og3XPdvYKIO8TnjJagA8ylXb5u5QYaU0?=
 =?us-ascii?Q?Xu02nb2Vu0XsxDCC1wDR2kOOKH0h4UxrJdk7FnKCd/5Nw1RrhHrZLVV+0pNq?=
 =?us-ascii?Q?G6S6uh5Jn8tKCFeIoSWXtoisCDAgFSSiOWCXlDMJfnRGlDx9SPtfTVLbvBK0?=
 =?us-ascii?Q?Gohh6V8GWrY5zr1D4mHqjMdbhMa0xhcesHxI7ZtOxn4c539xEkPpZlHG2LVG?=
 =?us-ascii?Q?IjeEGB2V2HMRgnUCNAN1Q5F5gDVvnOgNluTQEQT+oO+qvkQQeCuH3QVZplPw?=
 =?us-ascii?Q?oLGE1k5cbbSeQBpoNnwBfU/gy4ioi9FbDfdRkPxDqb+wF7dxwnhHIVKzjuSR?=
 =?us-ascii?Q?ShzBhmrlSxZNpsIS6a/XyxYxzHV4ibArN8uCATxn5wnvdL4/t/6qJADPYf3q?=
 =?us-ascii?Q?o4I/lUxsvAIUD2X72T00/WFSeLKyGJb2D+fsFM8Zefkw9dM/rxNu+6aj2gsc?=
 =?us-ascii?Q?MXWvttZ6N5LGc64dFbfBdkNm1cnShWw+p6jAgYPYDf34tWMERmgxHYe5H+km?=
 =?us-ascii?Q?9RNyURoF730XWwR9t8/XwYaLDwuPZgu5gKEO1uhg9b54mq9uF4Cs0GqhVqD0?=
 =?us-ascii?Q?OC17VkPzk1Z0wIesiWEYr6+heNwqGrhcK94qUDzMwrvzALj2HCjiL8ryl1Ju?=
 =?us-ascii?Q?ybUrUWIocbjpum9qv7TDXItPDEWFOrqbucpHhSETyEmqAXGio1kLnGse6O4D?=
 =?us-ascii?Q?Z9+qOeXqfWrP1PtD1cIsA8oHHvU12G9kt1Ce5HcCfSHfbzwZF12DhfpdmNuK?=
 =?us-ascii?Q?mzN5w79DeSt7IFYzfPUnFw3/JaPjPfJJh31WZjf6Af/u2/MB9Auhg2yik65z?=
 =?us-ascii?Q?lA0Npv1JNtNuOk2HhqJ7Pj3NLz3puH0FaMZ8fC7rROOmtt4OjaD21xl08BmC?=
 =?us-ascii?Q?yGRoXQXXfvF+wHmQKI505HnoiA+1miNTagw80/uiCa8UKDHWaz/Nwxs4CX0D?=
 =?us-ascii?Q?vHUSOt/89xXaDoQPNzD48pqX9AlPNAQC09QjgI2i4EQbepIBXG0dLB6RAVmY?=
 =?us-ascii?Q?Hs8ylmvlrYx+DW3PkdaCF6vUi92SjCTp10twX07jnxQpSEo2ENw5DnOTfd2b?=
 =?us-ascii?Q?FnHH96C2ww01dSQT7qhPYyBfznH8AtKXhs32cDLndkbwjsIgyHpwSLeaS2Eo?=
 =?us-ascii?Q?Opiydcxc6sYSFi/9uGJEypqV4KixD3W/wxmZ6jxaEK0uEDHk5l7iitWhWJrq?=
 =?us-ascii?Q?VV8RMUWCvlRc1WEBo0DD9qq2hADVvFxB9ODkiCEZzJtC47E8lDXwu7SKjIAA?=
 =?us-ascii?Q?M3a8v7/Toy9AV+esDg+/bswjfjXUFOWBrNwztP7fjY0nhxzvQsYskFB0UBja?=
 =?us-ascii?Q?HU23jac+hrtvFVswo1DFLI8o0O3TpXpidTqAhynQ4yyBe/D9YJg4D0qbUW/6?=
 =?us-ascii?Q?MenDgPf7W7f5+AiPB2UO980THdbppflcx5j3kE6X7YQq57N7GBIvUhd/xZS8?=
 =?us-ascii?Q?9jdnAvrb/JBiUs0628Cyv4Au8+lmRy2skMTn9l1di24yn2aJeqpLLSiafiVM?=
 =?us-ascii?Q?Eg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02063eeb-67e7-4583-5a3e-08db8f2be5d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2023 05:31:30.5442 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B+Uzv3qkTwm+pHLPGZExI+WgkyLuT6MoG5cSQrgG8MITG51XSsFODycMUpshuyckKCHzcsIyuAsww83YpbvxTmZWvaHedP9j39drbUC3FN44qsQqf1jVTn0dFkLnEBYj
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8415
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690522304; x=1722058304;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JhMwnHKba6yehRdTU5RLOIu6lcULCLhVplhXEnb8BrY=;
 b=e3R7VdRKwUL6SKcRIyrBryBhRuQBlCKtkU4dgGmTYFUg4PVmP1mZ38al
 Eln5frL0OI4sF480FxSiUfb/nhR7iz8MjMITQLuAg5taeqylrQGJtu+vs
 oIX0ZL88hai1OFkGJd28b5Onv2FSsaxEKtEKyeKhMkdMZRufoNnqYR8MH
 EXJHTtaV0fOyhkrKHAXGkEKHeOmgepBZqpDtptgVZ7TQ52bO63Sp0+zlL
 LF6ITlmhDwJ3BKX9rcE40P+a+K4cCZ1wPIW8BpQrKbS5PB9BzSdX0Ftkt
 IdulrEokw4npQde38TOs6kHv5bOeUbGEHVWo6/8PqUI9muCOf7zqs6gZt
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e3R7VdRK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/3] ice: retry acquiring
 hardware semaphore during cross-timestamp request
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
> Sent: Wednesday, July 26, 2023 3:21 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/3] ice: retry acquiring hardware semaphore during cross-timestamp request
>
> From: Karol Kolacinski <karol.kolacinski@intel.com>
>
> The hardware for performing a cross-timestamp on E822 uses a hardware semaphore which we must acquire before initiating the cross-timestamp operation.
>
> The current implementation only attempts to acquire the semaphore once, and assumes that it will succeed. If the semaphore is busy for any reason, the cross-timestamp operation fails with -EFAULT.
>
> Instead of immediately failing, try the acquire the lock a few times with a small sleep between attempts. This ensures that most requests will go through without issue.
>
> Additionally, return -EBUSY instead of -EFAULT if the operation can't continue due to the semaphore being busy.
>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>  ---
> drivers/net/ethernet/intel/ice/ice_ptp.c | 22 +++++++++++++++-------
> 1 file changed, 15 insertions(+), 7 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
