Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D552A63E8A3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Dec 2022 04:49:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1254C60C0F;
	Thu,  1 Dec 2022 03:49:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1254C60C0F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669866557;
	bh=kci1fIuvkrADbOnty19n2MhBXlIuU2P4OgnDaVI2Ku0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HXks7gwezMRcLGQOjZMiaBnKgviWuGI1WJ0NmSV21mSbA3mjgET07olMFnMZrhoxK
	 0dOVrdyGLTc7kZ8Qf3SF/NBIFfcEtHCMu4p5KFs6agF5UhUI2fclLun1UAOkdO2mA7
	 fzACUlDaQc6ruioqOkwM1aL9RmG6K5XGSE08eHyBA5ZovUlak/vMcLo3DqfnueXaQK
	 JS4WD2WFqZVLo2L7vp85kxBFGbVXxVFyx8zU/H6uPOFqdVO9H6nIqgkAZ96LMzkp90
	 tmHcjZGwzx0+QJofppn6ujUDo2wFymj7+/0baUU1dWoOZ29xQHOc8yqGYy5F4cCa2T
	 qAfGmmku7yaNQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0gNAP7FDWqt8; Thu,  1 Dec 2022 03:49:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BE5960A87;
	Thu,  1 Dec 2022 03:49:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BE5960A87
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C2E171BF35B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 03:49:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9B79D4058B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 03:49:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B79D4058B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sp9Bmy8bBtan for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Dec 2022 03:49:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94BB3400EC
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 94BB3400EC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Dec 2022 03:49:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="313206958"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="313206958"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 19:49:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="675275238"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="675275238"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 30 Nov 2022 19:49:09 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 19:49:09 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 19:49:08 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 19:49:08 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 19:49:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j9iqlVRRHcqBapw3+ZNoeRYK6pda+EtLHSVovVUCsdPxSMhpkYjACw7y2b8ukPnTstErzkgxmmJmhdQZ+iig4Us0Eru2f4c5tRsNT1y0sU7R3cispVbfpK2xGStfiyxPNxST5UgnFNlpV8v6qq5ZKTdz5raPkrgwurdHhTbh7SPJ+SIjsJhbjC8vNAu3390s7SZm1zO01gUI7bizvNlfKlI/pPEoI5x4/V3VEOU7xW1PQcG0lwUmiyQsQb3VzbeKdumXoIYGKXCzDS3O/RqQ3DuE02RyVE9wDrnAzTRxQm36Ezv33iFGJUdGxeaxoBNUYMcDyLhwVgt+Ed3uPn4BnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gouLoHGKOUPVFMsRL0FOvo9/prbrhRPIGVuab3TT6ck=;
 b=MHu8vRSUQgrfFkirm9lOl2M8WaUOvZ23NZ3mqvGEn1MHFrHigp9yjtyVhlHnk/hqw7yz6YUONRKfvI2U2QcMo3LaaDgeYOqhwGXxLAkYofk02ql9yPP5fxyzzjFaUQhvoir9ez4dy4w5uR6YxFQkgobCuzHe3aka78j55TchMLGi1Iuh8D3MxwJow3FojeWSZJzS2fH0Kua6AuOlcXvohIJOnZc8mLaqh3vMqbd2khWIe45tQwtT/mcI3HojMKWt4sbFI5dWHWJyyyAOmI5mh2uJtukdsfudgXWD8236lLNzpLijTzVXEgs0yHOgry4TQXA4iNunHItS3dAFSFey3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CO6PR11MB5604.namprd11.prod.outlook.com (2603:10b6:303:138::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.8; Thu, 1 Dec
 2022 03:49:06 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%5]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 03:49:06 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Reduce scope of variables
Thread-Index: AQHY/1zcB3wnqRpWTkWCQ+ca/QMLoq5YcN9g
Date: Thu, 1 Dec 2022 03:49:06 +0000
Message-ID: <BYAPR11MB3367458B0D34CB6FE0ECE121FC149@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221123165640.61314-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20221123165640.61314-1-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|CO6PR11MB5604:EE_
x-ms-office365-filtering-correlation-id: e53f1b4b-96a2-4e85-7d49-08dad34efef8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: k35l8/BLA3dmnAzAPkxZnAK9jR9fpE1UmSD40gxHA528tE+zK14agS+A7MPw535cZVA/0wKgvb7aOZlEhf4zQvckgywejsVPpmzCSiin9C7k7Z7wuPoOiU3x2f3z6LF4j2JEvlCB+sQW1AY1/HuIMVt+Rc2v/GAIntrzQE0s3TwlvJ/3EVLURsgP+3SqbrJVfmJoUHLJTHmnq7o6+6DzxzHptGAeKVvC+s4h1xyAdsnYCknpwkrpGwjCvo2ZOmAoliOu0z3rOHAqbLgC7AJavwHNbaIe68+extc08OC8SHR7ySCqkcn0nQDmq/0WxafbIcPwo3vVGT4ulU2F3b8dyRrj8AkO3LxOlslLErPd/IFhO0AZnhtnJuSi2xKqFkhnwcDw1w1abOZX1o7sYdushl0EiRXxlKdl22Q2yLwsVldWew8YTgCJp9RkEnXoqqGdGToH7UUOlxe43VvFPSDelyJQpuBtkcFAXKHTiTa9Pf8dADuumBCYIPOBtHfa0agPrzgaSVAAEh+dctdQQODutWBmjRs6lG2ZNdgn/ICawicCp6bOjk0VqQ7KF/GC4kpFB/lZX/2ALu90v9L/DUShsiz5eTPcCixNxhxJSX8V1pUXjKSSWfFWvgKyNrEjFpoD1RIqr6HghAbsob8d/jO0oFso+UXyGHhc9KuSQXX6RU+dOdv0fnQ50TmLriiyqnsd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(136003)(39860400002)(396003)(346002)(451199015)(55016003)(38070700005)(86362001)(33656002)(316002)(110136005)(71200400001)(2906002)(4744005)(66946007)(8676002)(66446008)(8936002)(76116006)(66476007)(41300700001)(5660300002)(52536014)(66556008)(64756008)(478600001)(83380400001)(38100700002)(82960400001)(122000001)(53546011)(9686003)(7696005)(186003)(6506007)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tJvIvLsHhz69x4ul2YOSjQ1JCZyprmJLGgKWqD/jo6L6qkG4UPXgjt5g6xGM?=
 =?us-ascii?Q?ye+H/oQztSfmTfKeAF3kcqs+5ap+1K7a0DF6ToKzGzubdyh1n2zyebkQjFiZ?=
 =?us-ascii?Q?idcOpGgmXF/9qwgzVGJWS8+HUTi9DeWu6ml326Wkr1xb46nN8IWpVCBz0uaX?=
 =?us-ascii?Q?1stSVF19Wo1bITGNpKtgFJGfmLBkh0VuyTLX7n9JS6yHGq8qv/p0VBiiTTxW?=
 =?us-ascii?Q?i5rjVALZF4bnedVlAFAhow3kO+as38/P5Vhss7CLuhAA5qZuZfa0On0H3hSW?=
 =?us-ascii?Q?KDnXTNJoUC4mfs2OX6YT5n0nX6qqhXNF9DqjHqpCZzEsdHinP4SQmkFBQtjr?=
 =?us-ascii?Q?5ckyZt8PGpJ1MGQdNVnHDuYUbu5O1SZ4yHW9B1Vp6QkvTCmUNSBXtiYhAC6Y?=
 =?us-ascii?Q?B4t4PjVYMp64/zEqECyVQkWqxuFnhIJ6TZYF54k1dHWhEX29U74Cx8GP/i+r?=
 =?us-ascii?Q?OsW+qtCeu55KOHbCBS2mBVeu772AqxQhgr0J6Z0f/Ijx8+4YorbHgLJzA2ih?=
 =?us-ascii?Q?zcbBv0EZnNP5Xfe6XEPelP+xRK1R3B42j6HRW73o6V9AH9ODD2rM8aEoNl1p?=
 =?us-ascii?Q?vOH4ZNF7PGsJTCVYalJqPg0yevxCE6M1HIvzHhmEM0gaNcKM6wballA/9CCn?=
 =?us-ascii?Q?1vEurbP5PzRqm4LzeWwtk39UoFjKklcric2pbhxuidGFp8z7tTUQdmmzqYjF?=
 =?us-ascii?Q?9J4yVhxnsmMcaJJ7+8axGpbPob268OXwjXUJhPzHzHsCvRCgOTvZuCKSf+W0?=
 =?us-ascii?Q?1ZN51Kl0ecoaMhR2BB9rGqwNwDUzLRFT2wnaiZg72pjmaF+gqiqRwzFUXHvU?=
 =?us-ascii?Q?0ofKrMlnc9mZn7q5lTFOoSWLxZ0w9HsisJplcfD7GnmT5IQDSYv7gA9jy1vL?=
 =?us-ascii?Q?5A/qUoxNr5jKJ2Hvcsewc5JO7IRPI/E5IhFEpUtVclWKfdO16CJEwb703Lf8?=
 =?us-ascii?Q?p/DFcvRmvpBWVOspmIMZwGkIXNZCDrCzXrW1R/fQhnfWESV8TVdImmQ8cfVt?=
 =?us-ascii?Q?RRYmYXmMYZpbl+cB5c0wrSMXD5raIJ8cD4i0y/ZbnZjbAVH9O8/1I0svgl1g?=
 =?us-ascii?Q?YLwQoDQ2lLSiW8uTcYzX72VBVhrYd51gXmrk41losE2LF6RZnjNpQOm7IPni?=
 =?us-ascii?Q?HPv+qGi0aCmZ6KfBArPC9B+sasUwLkFo7IGwK2mZ1Wv63Bu9RRbZX2ZzrnMw?=
 =?us-ascii?Q?Y96JPa8bfXIzG89qfoQscr5AXn/8irsiLK/k0KNCOtUODpx8xPUWvvMDNN1B?=
 =?us-ascii?Q?ZV2U6DKyVfbEuF6MdTnVgt9bWKermpDbEjKY33EvNvA30aGNklWKDS8i3AoU?=
 =?us-ascii?Q?i5pNgigOXdjGdOPNAu5QyKbcX3XHUAL66b7CdjZ6sS7nv+WvgwAIIzpK0LGt?=
 =?us-ascii?Q?kDOBdrICPWp8f4Y+lC/ZAInFAAdAQonnM7enTHzOjvZj73VkbSv4+tmcouYN?=
 =?us-ascii?Q?+eXgIgMLy7QJDEa4DmiURVMZAuqT6FzaxK163aK+LGG6jr0yaXoTs/Sb5BJg?=
 =?us-ascii?Q?pQKqrm+KSMBOSACHeazYVi3mTjuKaFVJswCQaXyOFEaPgWi8DtI+h1Lama42?=
 =?us-ascii?Q?17KFDis69H5beD22BmjhTOr+fsst4COqE9ebMEJO?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e53f1b4b-96a2-4e85-7d49-08dad34efef8
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2022 03:49:06.4485 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aIUGNpeTjLG9zuA1NTbWIkRK08P89/g2ITpjsdWqa1bLlwrOgpmvbxakPVAo7zzbtnSBJm7jQ7OFOmtJnntmlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5604
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669866550; x=1701402550;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NM5ebyTlUOOrwsY9PhBrFoBwSP6AVwgwjTD9AAxkHv0=;
 b=O5YB8ShU+JdZMWsL0UB9BgBru0/Z18ZifpjP7ICVqioUvWs1RIZTYbCq
 hBfFCCmvo5o7iFBEMN1H3Zygj00Fn+9OFt5bJfqdq3PkPmsSvoxEdD+sr
 0tZYD8X/XWk+EisupcmtLcvVyLo1bZm7aVgPJ9eKJq4LVRoX0yQbKPiei
 w/Cc1uB3CIz2Pg3pUe5GiWzKymT9DRn25qJY3NQcFQ/K19+Q13VUwo5+l
 7l5aLnkk6BzxhkOwEYtUx2aeQQ8dYJhGpSrLKBcxPPIGw1TgtvDlFgJI1
 sUQc+TktB4ib6go7XlOZbVG7HSYlQvX3uSUgOxsQVDOaBcxrRAPR2wub9
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O5YB8ShU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Reduce scope of
 variables
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
> Tony Nguyen
> Sent: Wednesday, November 23, 2022 10:27 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next] ice: Reduce scope of variables
> 
> There are some places where the scope of a variable can be reduced, so do
> that.
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 9 ++++++---
>  drivers/net/ethernet/intel/ice/ice_sched.c     | 6 ++++--
>  2 files changed, 10 insertions(+), 5 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
