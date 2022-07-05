Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B86C5664AD
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jul 2022 10:03:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 66E0682F37;
	Tue,  5 Jul 2022 08:03:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 66E0682F37
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657008193;
	bh=EuVsbJe3ILTFx3sYV6SyRL7XfATjdCDdPdfiiW/PpAw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gPdfowydLIXQCx3q91Q+xoR/C00ucHGZ6WA9qVdtNAn5sEzijxjl7aEwuZ5muk74V
	 5nEq0/l+L6dOeIvUlc3wxwJwzW5/YGqJtFrSc3geJ2cqO7f5CzxboVRMQaF19xsm8X
	 qwF2Q+HlFafyBnjmoIlS0nZGL2wVIt5oqiaAehkikuL+saKmdeiI/83QtAioJwSi3U
	 gzj9VbOJZ5yqjp49tExCaWHg+s904CorM+DVBiz1LzyxiwcAowyfN2vV2LvA5Y5r6J
	 L2yQ2HjoVOVwAC+IU+0Zh4awYJCUZqFaYvx64VYxQAOkX4UO1nmd9LAvlDk0kgjUe/
	 8qqR0kPfisl+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xml9QbQfcmEy; Tue,  5 Jul 2022 08:03:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 42DEC81B84;
	Tue,  5 Jul 2022 08:03:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 42DEC81B84
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6F35F1BF2B3
 for <intel-wired-lan@osuosl.org>; Tue,  5 Jul 2022 08:03:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5556140941
 for <intel-wired-lan@osuosl.org>; Tue,  5 Jul 2022 08:03:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5556140941
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T8eYaRAder_s for <intel-wired-lan@osuosl.org>;
 Tue,  5 Jul 2022 08:03:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A5704093F
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4A5704093F
 for <intel-wired-lan@osuosl.org>; Tue,  5 Jul 2022 08:03:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="369608627"
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="369608627"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 01:03:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="590300695"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 05 Jul 2022 01:03:04 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 01:03:03 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 01:03:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 5 Jul 2022 01:03:03 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 5 Jul 2022 01:03:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C/0XQqaBV9WaswYsx3lhUaIDDLxlH3f93FvTW9z9VYtE19UZ/8c5qhGDXPwBCfpq3o7aMvbb3AlZtrRNBZnVwOFwOuXSxh+u5Vb5yVcFa53qkOj0y0Sw/P/1CEByiqKf2LfL6YY/K4VXM1jEotDjx5TWE+pCXWrOdnQ3Rt2QI9SyK6RbkNSz+eBeJE8+JjhsvGI++RoCueCl1705HOobYtt4N1lN+DqZrmySqng5fb8OUkJkZwNHPeA/cJxrMjJRf9eDU7QI/kswCcSsw3fJk/4ifCNPF5X+qjjLEf3CaRmjwne9uBVrk4ExsTHCuuKeArCMN3VyLuLYsYW0R1/wKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NIMrLiYHzMUzdBMH3glVeTu4Zc/QfoFPQCcc4swuO3w=;
 b=g16Q57aLUIvjc+4K0L2VxQEs3Kiwt3n26viK/i8UjAaP+H4xYGy2jxFCyCZTK4zqFgazKoTL4bfPSVcRI8tXprfWJXMCQ2VtNFgYfvIitfeWZ8UykvcRJqIfzDZICjKXMEKWQ0HFyUnl5i0AGNdSHTgWz82UEiCukkucsPBOdCNYafAWAPFCf4pbYM8rFd4vG5oz3Mge7PyYslyuKNIMfFXd6XvckETLL9rFn5MC2TBfG5rfbP28Vm+62JsY7y8nudq2yY5xnizegopCfVMaw9s1jKpW9zCth+dQPRQb2a/IfOncdcqSl1bEPngp8p8pOQK/sKnv+jdJht8ecSaDLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CY4PR1101MB2168.namprd11.prod.outlook.com (2603:10b6:910:18::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.14; Tue, 5 Jul
 2022 08:03:02 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d1b2:ed18:5abf:364b]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d1b2:ed18:5abf:364b%6]) with mapi id 15.20.5395.021; Tue, 5 Jul 2022
 08:03:01 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Brady, Alan" <alan.brady@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ping: fix ipv6 ping socket
 flow labels
Thread-Index: AQHYikazxAxuRMuG4E60cXyeF2dxoq1vdpcA
Date: Tue, 5 Jul 2022 08:03:01 +0000
Message-ID: <BYAPR11MB3367C52A1A564CC3527A16FAFC819@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220627165310.2935617-1-alan.brady@intel.com>
In-Reply-To: <20220627165310.2935617-1-alan.brady@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aa5b83f8-5b6a-4e98-5d0f-08da5e5cc855
x-ms-traffictypediagnostic: CY4PR1101MB2168:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QwqQiAezWWM7RTrDbGP7eiBekx8yr4OJ8oYcGAsTjyz/xGYi/XWHvayJihgnWhSKcI5QVDK1HYCz5AxQ6kvK11l59mgdeINGz8dLuj5owBDb573n2fIQVC2opP0f028d6p1xgTv65tKi38Saumqj8QAl1FxdnGCUTN3qOVd6y9q/pZcg9D+9KEUjPTaBP2XwOowtu6KBM+5X98mIOpU42FdMUdBzToqDOx5WzcVkyvZQvf0ZdWvAuJhFAdO72osbyvajpwpdm1LXGqVBx9GCSReREt/skbQp+cQ+X/lv+XO1CYSep0ATcddMyYPtlfp1jmubxMCFjaxCAfY82K2hvRF/gAQWS28btyM79c8YrpY/U33JSPP7CPbw3QevAXCTxr+9D9ZnNG8JhRfzd3teb9EM8MkgYGFKKNo0AD8sSFLAGT/z4nQD3G9rnAdpEilnIGNhoy8DMX4QtkfHwnhCPKLw4kBYt67ZA9aEMT0sz5lCXb9mK9fEaqgPOdwfGxjxoOAyIEaXx9Y5jBZZCjeXm+S/F83EvzKPISC66Wd8R6ud1Nt+iGU3pI/2ocO3GwBnRFzqHsse+pMKJo06Sfxj08R4a2Jo7Dl8d8npPr0fM+PQnDM9haEz+TiUBsMpCp98UWHvaJOQG92yZox8IwkN9Q4xrjNHqb3X/zyWoJJU36gAPn/k1wOdgWPJ9PgmC4rxsnG8x1tDNLEznU3ZHt9nMxz3rrL84go978zdRj4ncPEo5kBxpmu3BMZgQ05laQZEd1Aee4iRwEzQBXQzvRDshQdJJKoFSOZdI7M35QkFAakk8Sgyj+ipbxGSJPxLQCXk
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(136003)(376002)(346002)(39860400002)(26005)(9686003)(71200400001)(66946007)(76116006)(83380400001)(41300700001)(2906002)(4744005)(8676002)(64756008)(66446008)(66476007)(66556008)(5660300002)(33656002)(8936002)(478600001)(52536014)(186003)(53546011)(110136005)(7696005)(6506007)(82960400001)(316002)(122000001)(55016003)(38070700005)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vXF+gjZxOzcroRSdQVfOdPO8wNJs+BnhtkDL6PVQ5oRyYT0yTwxNUzhwO5Xs?=
 =?us-ascii?Q?jSUx6ZRt7dmQ3jR8ZW2L0mxoHUoUNZt3nY/SGyh1vaycl6RKoN9j41obbgrs?=
 =?us-ascii?Q?chIv77Hu1BzUnpiwDpnWbZbG9jGUExtn65U40FWfFSmiy1VMXtCmsrk3Wfd8?=
 =?us-ascii?Q?3VL9vfYN9W030v7RF7sCcE4hGb4PJq2cKeL1eNDQ2VSTJf9XXIuTkWZDj5lW?=
 =?us-ascii?Q?R0qjVZmHPDELY7lJE4puNO9t+INVXq2TcrLjhseODsATw0B7x5o+wAI4Szvs?=
 =?us-ascii?Q?4UWBXHg6ng2JY+Kql0gxv8kCgH9OB5ySocLcWNnYYXWHPcpKoivpExeI2hfI?=
 =?us-ascii?Q?BCCfTohfQrXAAGwKLr3YJlowYToOFIcYcICLVomaMXnVYDhy63yzfBLUI3+F?=
 =?us-ascii?Q?Ue813i/KGydIQgBy9Xafhn8NotdZ9awi7HeadvmjyxfZefP4oVcKeca62Py0?=
 =?us-ascii?Q?8Ix5rPlmYH+n9TP3Q0Dz0OWLpPF+W52bB+SNHH+pE2KGOmVs7/HsGJppG84R?=
 =?us-ascii?Q?VC2yMKd2NTB6iUtEYdFjfow+IDntAsXPFMyDjxgsz6aOI/RiVxIkNPwvQqa6?=
 =?us-ascii?Q?3U7B4uGAVpPhUvLErHQI+iTeKxlFKPAHYxmvs5geBVChcfwsvQpB46FoWXEn?=
 =?us-ascii?Q?vzi+zgnROnsuaC5QclUHr+4Ju0KiyvOQ4KMvQUnfcXTpF+dUojPSJ3Wew2Up?=
 =?us-ascii?Q?WszxhY9fRI6pgWv/YbVG+9yi3bmrcNEG0S4HacDEjy9x8jLkJs0f8OOd3gBY?=
 =?us-ascii?Q?nvWlU5ycWbIUtgIFaeQp7HajhsMcM5mIIPnx5HdJmMx6FP20uas4454JLbWk?=
 =?us-ascii?Q?al1eoxeH+CadTlNNbRWEANQLoF6/keMUxS8UW0ykPpHPJU/Uy2v+Lnw15imw?=
 =?us-ascii?Q?xLc/GH6YX1/wmqzK6Ovr/vP/Z83tmIwLjDOFZpsOToqaOT2/alhJjT5chZcP?=
 =?us-ascii?Q?7OEOxDBiKk4qnOku3Yb8UhSS7wKh6ZB3svmcj0TsGnJn21ABVweDix3YruEz?=
 =?us-ascii?Q?wyMFN09xPUXkDDCFi2nm2u7AuBgcOBozYYGCG0EzoqLkngTNDwHk98BCAXU6?=
 =?us-ascii?Q?/o7h2rDP8AUUIvjqItp/w1gfyrJWHEMLmuyb4pFdOIIrPIeH128YSavQQzUn?=
 =?us-ascii?Q?E+u9qXBgkBkXpSx+irUtR9CB3gnXCGIcbHIdm0eKxZU3cV7teoWRdonLJkLp?=
 =?us-ascii?Q?5qEmbhLYylg06ADDyiuFDz3H0lLOZvjrH+fS0MOvtxf6iHP2OxSvu3kPIMIt?=
 =?us-ascii?Q?fbIeAc95IXJczcqLpakVSrqr7LDrxVPb8pebciKu1viBJrLYd3sDOC/Svn5/?=
 =?us-ascii?Q?bXfgKOiXlXgs+f+WIAuJBnQPNtXCGxyIHfDTTDzxdGz6ZhW4YFdnYsn9XcER?=
 =?us-ascii?Q?PzGuR+Vs9zlkKkfPvTseLb6G5B2gdtmsvIiTltSFBz5JK4KNEIgdouENoYS5?=
 =?us-ascii?Q?wFyxhPFUxi9UO7TQudJOsbWbGrTcnSL13Zq+KxMY7yPTBPpY9YHIbPdMO8Xb?=
 =?us-ascii?Q?qeM4zqCznoaQ5Ump5nAZYIQcb4prwMtBkpAQj40qlcMrY34zUKqzm155ed3/?=
 =?us-ascii?Q?eV8yn3JNMApr3JwKWPPhDY6Ihs92Sb7UMtvev2zq?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa5b83f8-5b6a-4e98-5d0f-08da5e5cc855
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2022 08:03:01.7073 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TQJRNgq/AE/4SKoVigq3yb8DAY5Ygi3ysAF6GrVtmwzkdAG5xvgkjElRml325gLIayRaAiQm15APjuBN0ZZCbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2168
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657008185; x=1688544185;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=oimYlOoO8X2PAqi2AZGoRWIVsgkcxnirL/t7qEWCyNY=;
 b=f1sMvr67q/tTl+ozTa9y4LbKjoCNXpExISlFzuvqpfxq49a9iZ47SAok
 MGeZXp6Q8JBVT0MCuWaITvvFIvCzFlvPbQMoZ/O7qssK+qYoqNEyRE6YP
 wuvq9C8hiNVoHtJ24F9MAq+VrHDxnXdSx6CIrOPw7k1kd5lDxSAOoqxuR
 /kqLabk9YGH8nucalGT8vrUqVC85QejaVRqme1glEXWxaqu3AS4WV5uMo
 sIWheutQdr6f6IasVWqUBf4HfWtJYgSTMriXEeGmRHWtg/aHVAnrOSruL
 u/bPrW/kMIWAMsA9FjLsZ1pnFH/sZIak+h2cJ2OW4IoY4d3o2St/5ogA0
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f1sMvr67
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ping: fix ipv6 ping socket
 flow labels
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
> Alan Brady
> Sent: Monday, June 27, 2022 10:23 PM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next] ping: fix ipv6 ping socket flow
> labels
> 
> Ping sockets don't appear to make any attempt to preserve flow labels
> created and set by userspace. Instead they are always clobbered by
> autolabels (if enabled) or zero.
> 
> This grabs the flowlabel out of the msghdr similar to how rawv6_sendmsg
> does it and moves the memset up so we don't zero it.
> 
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> ---
>  net/ipv6/ping.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
