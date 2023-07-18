Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 758C0757353
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jul 2023 07:46:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 972A860BD6;
	Tue, 18 Jul 2023 05:46:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 972A860BD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689659189;
	bh=35PfOsNi9B96DcJdLDvDql35MiJKev7/YGYVWnHyIys=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=o2s3hF040XVaugEdMeI5wwK9ewEBBj3AFtJVzrBQJZ8xe2Zrl/cda0h/aF+fSxdrI
	 XwJqYav0LrtxPr4h/b0HeyLJEK/rj2QzAV7e6iadGg43L34iHEYop+NHh4xay6CUQz
	 TlX39R/feMWoCqdORgfVzMMTCIY7g2AQBQCiIVjmokWGj1sajNH1DwBWKzS8SmupJq
	 rUpLdIREcrjMdgA1tSbp0Ij3EguU/O5w8EyEqub8VN7swbNKa2mRi7YGv1BhKxWVZi
	 y4672DrwQevPnOEYWHZp5aHQaexq/hG/U/z5X/MCGHATu4EIIXKiGvXVaQGtHZA+Zg
	 fVg7mqX7RmaLA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3qifYUiBDafb; Tue, 18 Jul 2023 05:46:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36473606F9;
	Tue, 18 Jul 2023 05:46:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 36473606F9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3937C1BF2F1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 05:46:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1D23F60BAF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 05:46:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D23F60BAF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nnK6-G_1n_77 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jul 2023 05:46:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF168606F9
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DF168606F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jul 2023 05:46:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="368758428"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="368758428"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 22:42:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="813613157"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="813613157"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Jul 2023 22:42:03 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 17 Jul 2023 22:42:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 17 Jul 2023 22:42:02 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 17 Jul 2023 22:42:02 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 17 Jul 2023 22:41:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mmQG+0rzUYV/5LygZBDghCIEuaGmk6neTTllgdXe/Xw7l9lcZr9JrNAKeJ0mjgR0WcH2KkieVtIevdoGOl/C1XU8deh43yui6Bp78QuXLQcT1WJZ28MadtYrI7H0TVZK3FDQKcunMvVzbf6tXZxoEDO+h5vnD/y3dGvAyl5iUh3Vds0KgeQel3JuA91AYYSmVV0NKVSAjIFUY+OZ6pWnfPEteootWMLCi6b/8giHt3SjIATlHhrqtjnlMKRmDpHgzx1fLQFq8omcDhvIFUa0CBreEe/J/6oDra4B8ezkG9rntxmBfWe2fHWnrOawJvnNCC2SV1nn2ZAkAmi840b+TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1tAF5bfK+j+H0RlXPfiupJuQNsk/mX0l9fk/OwXUvqE=;
 b=BvVwUTb085Go25IGrJUrk0NJfRFZpGHaFPO8bJ9D/OwcFGLB60O5Em5tEEHdaUCQivPYwnt4kt+rqOePK3b2ygt37yVvnhUvkrGTcH+dDzPHZSPahG9NC8cWY+pQw1orBu/H1UeHlue6eO+gngudqkR5HjI1jC+TDfH1bkwJmIc0YuT3Wv5kUaXaQNq4L6OXXYwE04f0PB6AU15UnCAUFB50N2LwF+fsKTJa4HbFKOOKQl9nFIXOj1eqXZ/LE40u2XsGdQa/DFn1Q0fF2VfDNPpO5j1ClPk9y/62tes2RLh/mpYGKXoFXp9bbxgc3G9Ef9Clc7JAXOm4Z8zOQWPyTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3133.namprd11.prod.outlook.com (2603:10b6:805:d2::14)
 by SJ0PR11MB5165.namprd11.prod.outlook.com (2603:10b6:a03:2ad::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Tue, 18 Jul
 2023 05:41:54 +0000
Received: from SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::bc18:eb70:ccd8:352b]) by SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::bc18:eb70:ccd8:352b%2]) with mapi id 15.20.6588.031; Tue, 18 Jul 2023
 05:41:54 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v14 2/5] ice: configure FW
 logging
Thread-Index: AQHZtdlMaIDhPJchlUmQ0IJZWgUsaq+/BzmQ
Date: Tue, 18 Jul 2023 05:41:54 +0000
Message-ID: <SN6PR11MB3133B09898C35E3BD7878BE4BD38A@SN6PR11MB3133.namprd11.prod.outlook.com>
References: <20230713222558.142-1-paul.m.stillwell.jr@intel.com>
 <20230713222558.142-3-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20230713222558.142-3-paul.m.stillwell.jr@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB3133:EE_|SJ0PR11MB5165:EE_
x-ms-office365-filtering-correlation-id: 31e4fa3a-aba6-454d-38eb-08db8751b195
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YlSwcN6aITIaGDzXy+zhClojiflVYO9QPH7ZOE3W3E9aYscljnBYiIDWsTH9ytrdF8Aigv+S8p0DlhI7PhFA8q/BZCFTEY8klygCNvRf5z+7dNuiZcj081udPA6uKNIpYf0pgwuZM66yc0/IRnZsyA3fx8TEFwiyxaPgP4DuWhx0c96zaBVZIHdtTdXkF86qMquTpNe6GMPUL65SYJp/0RKBxW74su1Mq508tq+TMr1gjCr/52jeqBJtz092maLP34G/F+9dzISf4+JIjvNaqvSciAmeaGFFi/RA34ZhrppLHuCwDQs6Eb0Ggfq1t1UlRourYaqjpuRg4l4ixZxrCoHKvFhSmE4Pv/cS4NuTPJgw1YrinAn3ZYgi5KrYwZmmvO6IrkGd+WA1AjVlCtNBiQWLkgIti+h8oYEPsoVY5ZqEbpeMVxSp9ZcarrDNRHYCU/icvIdG6larSjOfzOEga9nh2k8UGDK+dj+xjXRwGa8an8zb2dLoECOWKUa+s0qzXg1afSkJyfVf6qRHcLMNznTZj/rsUcQDch/TUyZyD/+WNSDol5ZVj1j4tmBHVDCHM1OlTlClN1LcjzzSXwdXKh8+BlGeMFPw4IRVfRdnOAcoCD6lTmm2mSaYRwE642Qu
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3133.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(39860400002)(366004)(396003)(136003)(451199021)(7696005)(71200400001)(478600001)(110136005)(83380400001)(33656002)(86362001)(38070700005)(55016003)(76116006)(2906002)(186003)(6506007)(53546011)(9686003)(26005)(38100700002)(122000001)(82960400001)(66476007)(64756008)(41300700001)(66946007)(66446008)(66556008)(316002)(8676002)(5660300002)(8936002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vYiuimUAzaQAQ5rZ+6dr32CcQrkZP300td+8zIEE9+RS62smr87LTOdHC0Bm?=
 =?us-ascii?Q?E9VAQ0jaaOOrKtnCQSR6lZEVt1KCQbEcKmGEl89iel6VhKnJYB3w9kvS1Fv6?=
 =?us-ascii?Q?TcFsXBRv8Pmf8kOSNspMGYG3juVAMDOneLMlt8Jx5E+4QMDY4RPIk4wmapZg?=
 =?us-ascii?Q?Y18BMvgt6fRi6lrbYt6HMM3I+WaXU+N4AmtFIr4n0uHhr9qZKoTHVdgrvIe1?=
 =?us-ascii?Q?AOxnFH1/pPSiEAeFEPiCAYr4qJ2Onox3MycKaLDmGxOm9CbGl717lk5SQjJl?=
 =?us-ascii?Q?4rNChCEbjTkTBFeVV9hOpFEc28Bu9NMxa2Wl3W6w8XP5QqjRIMqbM39WSJUG?=
 =?us-ascii?Q?jHqUdoOCtbcQEMne+c8iwrM+RrSOluYwT8Hr+J/jhxvY2SZWM8QVWTu5BZuK?=
 =?us-ascii?Q?LQmT705EewmCIV3THcTiaV60aOeGeZBVluYcA55L5w/cz9GMtSARfI3WwQ2Y?=
 =?us-ascii?Q?Sz45qGptwb34YPiQYSUXlmrd28+2kipNCT46neRuuI1L/VTdZdYxjBYVG2fn?=
 =?us-ascii?Q?CwHuN8DkcCdGpJ4O5IQIAx2YF5r/JSpnN1m3JIft6LZyn7IJZxJDYqQr2PSN?=
 =?us-ascii?Q?8VAmo9btfpFT8HkAkjJQqK8QXfl7CmcIu8gIeurbrzoUtX/xiKzW1NJcB0jF?=
 =?us-ascii?Q?MqknZxnQ/1beyLANPFMlWQAhmQSGwt3Qxs6ZIVydN1SH254IG8fz5uY+IQn3?=
 =?us-ascii?Q?nh83shkQjahaObdEq2WZqUpRu4AXK7YbEOIEe6EONv/Fj9OPESMb/Zo3pRpi?=
 =?us-ascii?Q?P+oYezf7CTw0193cdsfKK/ciekbKBWBrXolTkjtZQDGvrbKQ0xdFC3cQtvTy?=
 =?us-ascii?Q?clv/mIsP349pN5Uh+OnvgOpzdLDVAsGMcf6Pj6eGjPFl7rIzA/T2I1zjnDi5?=
 =?us-ascii?Q?ybaiHa8LOTwMkrHqN4SUL678KJKH4y2AFil4cl243SVsNTZB+xg5e4hbcm9o?=
 =?us-ascii?Q?HA51dAkv53d+uQ6W3wZYOBSVm6JtbrGE6w5Gow3uuUicIEavhS7lX0EUXBG1?=
 =?us-ascii?Q?C23h1PqF1iKW/RTndpogVtRASgcnZt5i3GrRFeHYZ76bZ4NXHcvOvmt47wJw?=
 =?us-ascii?Q?FFTC7YJkClMqnfZ4B/LmVgcn6TJmIld1ORwDfNKycGtM8CQohufTQ0BYsCrx?=
 =?us-ascii?Q?vPwIDP4Sv7IZqZJ7kvLW+Y8mbpX8CUQIpWN1NHcohXwPohcZm3DCcWFfx/Wk?=
 =?us-ascii?Q?BE+7iaud3KiU3Oed1NuyVcT7w6p+/GXCyTmUYxwzoIunyqjihETXjCzxr93L?=
 =?us-ascii?Q?VdP38cixMkmc5b4EoyWdQWp/6qXjktMIqx9nijGq3/Obg0KwfEMjwayd2X/c?=
 =?us-ascii?Q?OLGYhPHry68nCjLYgcYuxbyDFOygmxFxx9xTNvI/1rCJIkCuRSM3MtVLHb44?=
 =?us-ascii?Q?6Rsp5PWTrkjEWvHdQpJ68DM5Dt+d3sCh+f2zfQ0bCiqQ5O4ZZkQtKyfz+SSW?=
 =?us-ascii?Q?teL6pIo7W1+b8F2cDKGsbQhTuYPMJ8zRLGdOHO4FX0nmgxkKQe18+CWmFChO?=
 =?us-ascii?Q?3nzj2tyYXu/bRQdVnSeLYnOCGwrccabbbevMI8bcs9IJF0DnWBwoilRRaMeW?=
 =?us-ascii?Q?dx0nklskVoXKU0B74xzItV+g4TKUrsv9mLQO/SpHNXFKWppsClR2YRM6sVnf?=
 =?us-ascii?Q?7A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3133.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31e4fa3a-aba6-454d-38eb-08db8751b195
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2023 05:41:54.4170 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qp0O+JwbExgm0iofOHCaiUJCOod+b4zqb6LljM5VZW0KqEjBsQSEYwCQtHn+uNm1fE44cIINZXMZwe00ti8y1NZwJv8k3NGkfopR7ApWgt/SncAnQdBJzF3WqtB9YNfb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5165
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689659181; x=1721195181;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Mdm9iI7wnb3u3QsJYCB7+YJznqGwJJdTEeTHcrbMW64=;
 b=AYmEm+PvC88BWewnktJDO3MX4MYOIDDUP/yP5+s/n16/pYXSsEuvNh5S
 MfRAezosgndjq2Ie9HlBc8iZQcooM5ar3SBDdcdHAeMDlCdj2eVo8WgmP
 GQnwBjlnmb0BysBmxT4jXYrqaOvck68cy6nWxFCf2Dw1rl4BMk2iq0/DC
 TA63GyrgORXtcKnw6N4ffW14O+ZK/aKYeQrow0fxhyBEvXByG4etN1zeP
 mXSPbCbiF+4G3cVaWyZHvKyFpE71dCtHf7El0o4M730gHYvFJ686Eq/pl
 UCApkex+P97iAA52+3pBIJAe1K4eAQ5gvtmdnzvgpPtG2wxsVBk6wXbjx
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AYmEm+Pv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v14 2/5] ice: configure FW
 logging
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Paul M Stillwell Jr
> Sent: Friday, July 14, 2023 3:56 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v14 2/5] ice: configure FW logging
>
> Users want the ability to debug FW issues by retrieving the FW logs from the E8xx devices. Use debugfs to allow the user to read/write the FW log configuration by adding a 'fwlog/modules' file.
> Reading the file will show either the currently running configuration or the next configuration (if the user has changed the configuration).
> Writing to the file will update the configuration, but NOT enable the configuration (that is a separate command).
>
> To see the status of FW logging then read the 'fwlog/modules' file like
> this:
>
> cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules
>
> To change the configuration of FW logging then write to the 'fwlog/modules'
> file like this:
>
> echo DCB NORMAL > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/modules
>
> The format to change the configuration is
>
> echo <fwlog_module> <fwlog_level> > /sys/kernel/debug/ice/<pci device
>
> where
>
> * fwlog_level is a name as described below. Each level includes the
>  messages from the previous/lower level
>
>      * NONE
>      *	ERROR
>      *	WARNING
>      *	NORMAL
>      *	VERBOSE
>
> * fwlog_event is a name that represents the module to receive events for.
>  The module names are
>
>     *	GENERAL
>     *	CTRL
>     *	LINK
>     *	LINK_TOPO
>     *	DNL
>     *	I2C
>     *	SDP
>     *	MDIO
>     *	ADMINQ
>     *	HDMA
>     *	LLDP
>     *	DCBX
>     *	DCB
>     *	XLR
>     *	NVM
>     *	AUTH
>     *	VPD
>     *	IOSF
>     *	PARSER
>     *	SW
>     *	SCHEDULER
>     *	TXQ
>     *	RSVD
>     *	POST
>     *	WATCHDOG
>     *	TASK_DISPATCH
>     *	MNG
>     *	SYNCE
>     *	HEALTH
>     *	TSDRV
>     *	PFREG
>     *	MDLVER
>     *	ALL
>
> The name ALL is special and specifies setting all of the modules to the specified fwlog_level.
>
> If the NVM supports FW logging then the file 'fwlog' will be created under the PCI device ID for the ice driver. If the file does not exist then either the NVM doesn't support FW logging or debugfs is not enabled on the system.
>
> In addition to configuring the modules, the user can also configure the number of log messages (resolution) to include in a single Admin Receive Queue (ARQ) event.The range is 1-128 (1 means push every log message, 128 means push only when the max AQ command buffer is full). The suggested value is 10.
>
> To see/change the resolution the user can read/write the 'fwlog/resolution' file. An example changing the value to 50 is
>
> echo 50 > /sys/kernel/debug/ice/0000\:18\:00.0/fwlog/resolution
>
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
> v13->v14: none
> v12->v13: pulled out 'enable' code and put into a separate patch
> v11->v12:
> - rewrote debugfs code to use separate file for reading/writing
>   the configuration status (fwlog/modules)
> - added a file for configuring the resolution (fwlog/resolution)
> v10->v11: none
> no data on previous versions
> ---
> drivers/net/ethernet/intel/ice/Makefile       |   4 +-
> drivers/net/ethernet/intel/ice/ice.h          |  18 +
> .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  80 ++++
> drivers/net/ethernet/intel/ice/ice_common.c   |   4 +
> drivers/net/ethernet/intel/ice/ice_debugfs.c  | 450 ++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_fwlog.c    | 231 +++++++++
> drivers/net/ethernet/intel/ice/ice_fwlog.h    |  55 +++
> drivers/net/ethernet/intel/ice/ice_main.c     |  22 +
> drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
> 9 files changed, 867 insertions(+), 1 deletion(-)  create mode 100644 drivers/net/ethernet/intel/ice/ice_debugfs.c
> create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.c
> create mode 100644 drivers/net/ethernet/intel/ice/ice_fwlog.h
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
