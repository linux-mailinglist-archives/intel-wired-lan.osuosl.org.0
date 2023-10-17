Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C99197CBD0F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 10:06:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3612740868;
	Tue, 17 Oct 2023 08:06:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3612740868
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697530015;
	bh=PbXEpmwCmLZwTk2EJVpuI+CW27oz6PVhWeFPB3lXfNk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OiJZZbXkbHtn1I/1zQCXEJw/7I/R2nH4MLZUm7ubrhAswgkoVMBaPX+9gLumYpDAM
	 jzNgZ7E0WHF+8VZCyOyOHH1Nf/fyIfFsysD6yIzDVwa1SRo3CHj50rH3ToInRhofsU
	 6viJVMD7B5AGipzm8rqj0FowiWicccOvRMhj+6B5sqIEUdWoJbc67F7tiApm+FnqDe
	 ETFWk0cdrnaRxYutY1qG+V6wVBOvEK1+DRITbXM4dw7u2Yy2pTUvrD+WAPTNY/ERU8
	 h7f7FVkhGU+b5Vceo/9H6ks+cdt+lp6ETfJSf+o1YBK076CNY0godh9LDZ1l6fEmrG
	 RxjcAbCtuZjxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KJtKC8PfmloP; Tue, 17 Oct 2023 08:06:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D74334081F;
	Tue, 17 Oct 2023 08:06:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D74334081F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E26111BF2F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 08:06:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AF8B7401C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 08:06:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF8B7401C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XqRN-b6ZGTqR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Oct 2023 08:06:47 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5E44E400AB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 08:06:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E44E400AB
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="385564082"
X-IronPort-AV: E=Sophos;i="6.03,231,1694761200"; d="scan'208";a="385564082"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 01:06:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="749593187"
X-IronPort-AV: E=Sophos;i="6.03,231,1694761200"; d="scan'208";a="749593187"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2023 01:06:43 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 17 Oct 2023 01:06:42 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 17 Oct 2023 01:06:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 17 Oct 2023 01:06:42 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 17 Oct 2023 01:06:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RizkBGjL1szT9nFoY7EAz8o8UOTt29N8DB53VYQ9kYItoMJVDaEOzTKfdzQ1APK5L+e8D60K3tyykruFdJZC3tYWK65ywBZr76gPUlg/ZxtlkhNrW1mQ/wgWv4JJxY5K2rwORdKMKHQV72Do3jbBgPFqQgkvtoxHeIRFAMmnkYWBXItR8rHuYZQ1Ij7UwCjFkS7YFtXU6+jlg0hOSs2pELgN7wiFxBjOCS1jlmrj83EZad8VN9jmlLzXvYY8t2vxfdZcmRkYwzkH2TN9r4JfSFysa8trosu0E0FBZa1tTJPtOYHNq+qXYJVlraNsGjo5rBtQTQboyHT8FxVtrSrvZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5QP8klsJKXAhfkfW7CijgJpcqbqRKQdSFNPwK9Ze2+k=;
 b=Z9oVU0TtkKDgdZyrOMlLgaP4+wz7emex11pYyF6Lk2tPRQUb88RxJivEW3X0nhxuw1zIxZUxSHBu8LKktBTAqTjPGEXJ34nODbOV5n3QCVWo5sCciiLIUCYXWiedP7tbABjk3D5ENhAjFJh4ggth6X7ngHggRb+pTWp8RT0T10tTRSCBYn6jEFgeTfOVQXuOTS/3gb7mbfI37wwXcfHCy9LkTGc38tYzNTYurrpaLj39SPRTeoJBsm93JLNX3delzym46ZTcOU69Xqv1t4/IIkO958jucwa5ZfgGKr3hE0ljn1ZP9wPKMNvkEs7dpr+pTqV5PufD4k0PClx7SBokRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by DS0PR11MB8070.namprd11.prod.outlook.com (2603:10b6:8:12d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Tue, 17 Oct
 2023 08:06:39 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4%5]) with mapi id 15.20.6886.034; Tue, 17 Oct 2023
 08:06:39 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: mschmidt <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 2/4] iavf: use
 unregister_netdev
Thread-Index: AQHaAFFCi8QouKAWqEefOLc+s4u4L7BNoPUQ
Date: Tue, 17 Oct 2023 08:06:38 +0000
Message-ID: <MW4PR11MB57768410040176F1E119398AFDD6A@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20231016164849.45691-1-mschmidt@redhat.com>
 <20231016164849.45691-3-mschmidt@redhat.com>
In-Reply-To: <20231016164849.45691-3-mschmidt@redhat.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|DS0PR11MB8070:EE_
x-ms-office365-filtering-correlation-id: 79731bb7-e1d4-43c5-4cca-08dbcee7fd50
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YptvL8NoCPy0SrcHvdPPRwY+oUkA/vi716EzU7/haZnpveFwG2Q3mA99IQSgN9W6SP+huEN0+oBLdOllbwcMF3lATkGEjAniUj2b5hcXzIyXbdAy5kBQoLCMpjirDv5UUKvVd3avPxSAUByjnd3PdocJHBJeRfEw+UH7k20xNhvuGGYElKYIIoIApUHe5N8YHBecGN50FAFDs3Tfe4l+/1xKyGs63nUv3SukzVlhT3J8EuA4V0jJFYQV6+uL3rvknyDoTFn5Rot2Jn1O8uzd6KLIPpiKBnVCT41izadNdD/JIMsNOjMBy4q+jx1iP+fVzaToIogGo2OKRkdQp7i3d1uFgtCR/nqZFFxzvZmYfrpV4edk1w+wgtzZzKtjdEtPo2tuebIU9l5FpJsij1JzRnxuMseM24BvnH57/B0x+vHCTzDibMK0tC822IybDtBSPnpZpf5u2PKPGIB4I+keuicJZSKFIgT6fArysrO6BqRpQqf9sVMEqA8yoh+vRQ/wcxtfBsecHJZ0m6vMjh04FIAjaCOWS5VBsr7gG0J5IJZDlo3PFivb7Ax73JEr0221XzJHYSOQCb9R9SCgNPe1eAVU/BAyevBpRESmogBknfs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(366004)(376002)(136003)(346002)(230922051799003)(64100799003)(1800799009)(186009)(451199024)(66556008)(66476007)(66946007)(76116006)(110136005)(66446008)(478600001)(966005)(71200400001)(54906003)(64756008)(26005)(53546011)(5660300002)(6506007)(107886003)(9686003)(33656002)(7696005)(316002)(8936002)(4326008)(2906002)(8676002)(52536014)(41300700001)(122000001)(38070700005)(86362001)(83380400001)(82960400001)(38100700002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3uqGh3gva9cdgDCtvfQsYLxhbfiC5wv4AROTxbFq+EURaI5lQr7A74b0EqaR?=
 =?us-ascii?Q?8sVEzqT83e8B5N0AKwZp9bod75lXoDOj0p+U9D7nfNo3f0RdE49pMuIfSZGp?=
 =?us-ascii?Q?zyH+3ccTEFgk+YpI4Fj/WzLpzfqe7/LSl31rVJoSUcFmeEgTVVlF+sAUnNkm?=
 =?us-ascii?Q?x8WJcM1SkR07pX+ZkWOcVa4QGOrcNYgCElov3HhZmLPaOcV9dUJWiQ++Qjg3?=
 =?us-ascii?Q?mFTC32RfqZ+dRiyizuQuhxKug2MCl3W5xSY7fSGKoEXwBEs6kJFCXcY70x/n?=
 =?us-ascii?Q?TyX9seYowB2JEYeJQoZ3C5hPHwBUPSgfZpYa1v4jDsHgxAP6YD7voPaAnZ6I?=
 =?us-ascii?Q?6iRG0KvexHh72Cz688csmwvEJT3Ln0u+cZya3bD2c2Ej41v7puYB+Ne6AWvH?=
 =?us-ascii?Q?uD/mCzyQaktWdaV8vzCSqbUYT7MkF8W4CJcpW9iSGtK4ghdcA21gR9Lb19iz?=
 =?us-ascii?Q?bbZYjMX+Ltp3MZ7EaGrlZqFFnUc68UY0DTimhcRz1MXXRm3jWE3uhQAUYCUp?=
 =?us-ascii?Q?gNo29VbcsGNYbtk4JIx2TMCjM/q5X0nHD2hLWR5iKQb+EewjUTGIZl4/1xXx?=
 =?us-ascii?Q?dKHX3WeTRdAsSLjmF1bOhkVlGlgMehXj8y1rNVmHtNelNZ5hzMwUm+QTw48U?=
 =?us-ascii?Q?rdY7Q7Gwx1hOsqg93e5PouMExC/9AnYKPf3YQO+b414TZOcNiJ+8THaWcQHn?=
 =?us-ascii?Q?B1IG2xB4Et75JGAOVcfMS+YvpH+dYjPIrGVGBhLjeIQ2J0B7camUx/lpG/5h?=
 =?us-ascii?Q?SLTIFIHSV9RGb8xpR3ekghaHD0KHn8zFZUqVb5v2eNpeUN8yJyRfEYxcrIDE?=
 =?us-ascii?Q?Xd+H8lKpfXHyUTMBByCuc/3Ge86PMekVjju73Ar+6aM5v76oLJyAVKD52CDn?=
 =?us-ascii?Q?JqnWPBU3VJUtSiE9h20+DtaG8y/dxLRBwP+3tzi2ktVRr7nq2eC2f9kmbywK?=
 =?us-ascii?Q?NqCRL5WTvUN6LVnROxO+ckkb/Wo79TZmGw/C98UHu3BFRc4aJi1LpiTDfDPu?=
 =?us-ascii?Q?oK4WRRbTKFKYAJ5yztfL/4ajI2/TgaeZXDBbKKizCAPpPgpkQhvTyTgKm+u8?=
 =?us-ascii?Q?+2khuuaat1Ft0oRsj/NdXzX1cgWedQtAMYWutckQvvSZqqmWgKWByAbD9GuF?=
 =?us-ascii?Q?f+7PrgZsIBBM7ue1TdqmJFbyJLbi1R038LrnQNUiuAYE1Wgx4YzjVabXXJtb?=
 =?us-ascii?Q?y0OuV3med7ucDfHOmDo0nCqx/O45BJUy6VUiMytWtFOdWyQj8Trh2yTGNzwR?=
 =?us-ascii?Q?mvmYIx+ppDz+vkwheNPH+0etXnGC2DiqhKyKP+iRP0yDFrx87LxqA4HySqjD?=
 =?us-ascii?Q?pRcffqXK5v91JeDg/3Y6iuxE5ije/TPqG6rjY5K7/HUOVC9p4X32K5Vrybkc?=
 =?us-ascii?Q?IevWueK1+U2Mh5FzEIQZVsd0LyE1MQLtAMLXo/CHnJAt/4fva6xU35HWZb/o?=
 =?us-ascii?Q?r1OCeejDrmwn963D3BotA40CoUX2b2ODrtw+Qk2BNGxppDYm7W/ViQ+LAEFZ?=
 =?us-ascii?Q?Ol/xnvZu4F56IfyxUkwUqY2VjJcqPtn7Pneq7JC2GkftVuh+cB6sEmUzyZ4W?=
 =?us-ascii?Q?lg0pbhk3fm+VE4zKdidgfub2nhMNXGbj4Vx2yrDm?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79731bb7-e1d4-43c5-4cca-08dbcee7fd50
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2023 08:06:38.5272 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jKHNO1odGo4IiticLUKyUuPWJpcgQen79FC+SansB/RQQvRuRkv4TX+1ru8msdlwA4K6FtfMQjXeC0YhRsjm/L91tnqisZyCRSjU/E9Vtg4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8070
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697530007; x=1729066007;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ol8yuKbwspW0YkuLSHtjpBQuEg23Dh8OZ80hVl1kpuQ=;
 b=na9JKYxlVSvL6h5Ioa5FRGVXzqKR1LD6Q4UB46QNtRd9exEyB597zLBq
 1qvgs/a6VQSZHMhyQD7IdEgWvsMRJPoimPZvaOgwHgS6uJL7NQ0WJ8qFH
 XrvCfJ2rfdpXDdZdwib9o4rE3keAmAAiKnRxSZMyz/mEmikNHwSB0bWMg
 io5qHPJZVa920pxtxk3DnCXhbZWub1oFMPgAHmSsVMXvr/u4VArx7YVSJ
 lFZ5a6V1kTheLzxhskY18PA7IWxYP+v91pDULbw5P6Z4DNw7lRzCV0xRC
 imDAjNkHiRtp89W6ArXQ2Pfl+05DW6Wulq9LnmMS6CCPC1Qw1Ft8NMPpr
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=na9JKYxl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/4] iavf: use
 unregister_netdev
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Schmidt
> Sent: Monday, October 16, 2023 6:49 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 2/4] iavf: use unregister_netdev
> 
> Use unregister_netdev, which takes rtnl_lock for us. We don't have to
> check the reg_state under rtnl_lock. There's nothing to race with. We
> have just cancelled the finish_config work.
> 
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>

> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index d2f4648a6156..6036a4582196 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -5171,10 +5171,8 @@ static void iavf_remove(struct pci_dev *pdev)
>  	cancel_delayed_work_sync(&adapter->watchdog_task);
>  	cancel_work_sync(&adapter->finish_config);
> 
> -	rtnl_lock();
>  	if (netdev->reg_state == NETREG_REGISTERED)
> -		unregister_netdevice(netdev);
> -	rtnl_unlock();
> +		unregister_netdev(netdev);
> 
>  	if (CLIENT_ALLOWED(adapter)) {
>  		err = iavf_lan_del_device(adapter);
> --
> 2.41.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
