Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C38A745D99
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Jul 2023 15:39:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AA76A40BF9;
	Mon,  3 Jul 2023 13:39:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA76A40BF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688391582;
	bh=LsLk3K+aNHsIobQZmgA89pVLTfZ/d7nQb5qKuXxToLE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2S0Jn87aeVcYbGV2ppVeMLxmBSO2yp+QUUc8cLUtbgWXCeF9aXDBpY5k4zoy5iLup
	 nZClBh+l0KbkhO2cmk+KcP8bbFn4Usg9HnTtWvMA+FltSmLQpN05WyBucAv3LWtKhT
	 bGH8IulY84JTSav2nIpZFNlM08WKBOSbqNrTBaHHzjfitQtHmlxon/IfESqO8jQzw4
	 bUNrz/sEaE/KDZhtu/a2AOTd2vJNOpJh8ZCtiv5IIp0oT0NRYBpWkQVozMdFUtTmnn
	 +/ncPBdrLB0bmGD1Ha9ptIiZ92KV9WvK3xmcJOi+Ad1kG8IjTgbLejiYJkD5ElptKn
	 2VjNRv/74Lu/A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5vUxLdCshemx; Mon,  3 Jul 2023 13:39:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7955E40BBE;
	Mon,  3 Jul 2023 13:39:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7955E40BBE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 28ED61BF5AD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 13:39:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0D8E940BBE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 13:39:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D8E940BBE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QzoQpatOoORK for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Jul 2023 13:39:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5615A40901
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5615A40901
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Jul 2023 13:39:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="360363420"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="360363420"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 06:39:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="1049089675"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="1049089675"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 03 Jul 2023 06:39:34 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 3 Jul 2023 06:39:34 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 3 Jul 2023 06:39:33 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 3 Jul 2023 06:39:33 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 3 Jul 2023 06:39:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qm+Vv7sRhphdTqmExalEb94xT+oF50RkD//La77+x2wTKjHrhWLOuPfmcIuuZ/aDlaAUyvGIb/bwnczAEZ5ZDE8bjbh0xnLfhvtJ1yXdtEhyTjpqHTmdPLThTFmKNlw3mk8SlJey3t1KJc3Pby6+xU3Nh3lRGjqsT+1ReAIlv8L9aME4rZ/zjOdnxqqckMPn80MAaAfgVwDrd+alY6m9uAytkOsQBoCie+o+bt/RErRON6os3L2vr5fgaFk8MJ92AjtTWJoCMUNkjOZI8UYNqD5aEapSoevW54nscfjs6rQUZbggAC4tNZlp1X0FbR+v7LPe6iyAGOu29zE9pi4Hpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QHPoWLoxR9RklQgoPkiHLD0G3xbv3M9+bWnvwjduBiw=;
 b=VPvqS0K5QFQ9wr+rftpsbmwEQFEkKHZUsSXl8NIY/VZ6+9frgP6Y4TpaNfybLYwrRRyrdK0zZNWm08VtXk2Fqhqq1KvIxHwN/d0IkTnzYWredzfmLwwCcvBr6Nsabty1XqYZ0oVVqAaWoMMpd+sH1bvGoNQ70ESLSy8OyrwnfJ3W0KzuBCklM3RODBIUoN5spbKh79jNOG/62QtNdF0Lp6T4xdw94wd7mMN6E4bdLe+Is1wyxKe2lgdMJOobelGeEmyyctP6dkBfrTaM3XI/lwf7bDhCmsd32+S7iZm/bDooeZJgIlndlcafepiYop7k8vBhpV2CnIgDajlMW4bwHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by CYYPR11MB8308.namprd11.prod.outlook.com (2603:10b6:930:b9::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Mon, 3 Jul
 2023 13:39:31 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::58df:fc9a:921f:a317]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::58df:fc9a:921f:a317%7]) with mapi id 15.20.6544.024; Mon, 3 Jul 2023
 13:39:31 +0000
From: "Sreenivas, Bharathi" <bharathi.sreenivas@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: Fix max_rate check
 while configuring TX rate limits
Thread-Index: AQHZmzS+oB/0ziD80EyBdTG3nuKHsa+oL99Q
Date: Mon, 3 Jul 2023 13:39:31 +0000
Message-ID: <MN2PR11MB36146E6276DDE2E83DD95F778E29A@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <20230610004024.2422272-1-sudheer.mogilappagari@intel.com>
 <20230610004024.2422272-2-sudheer.mogilappagari@intel.com>
In-Reply-To: <20230610004024.2422272-2-sudheer.mogilappagari@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB3614:EE_|CYYPR11MB8308:EE_
x-ms-office365-filtering-correlation-id: 15a9ba08-bd0e-434f-6483-08db7bcaee3f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1dFFDA1WNz8Pk+EQ1e185qQ7CGepWX13iJD9n7AtGcqPdyHts+qB1iz9c/mhfN/WWgzkyGd+IgUVswa3g0Oi+VRWVUvI97lgVmgJ88N6nIDT5xuItMqtRgPt4c105zQDy+SmxQI6Ww6GO4OD0fKEoMiWR0IApDWkNSeTj808IcwH+O1mfvrC+ZcLszeSorMCCJWV4PXc2JWOh7dC9tRxvC0yVM8sIFPCt1bRATNcSbpBm9eDH3Gmx+HFefMJz4Z7o/ywlNq/2gWL0Ci9/jg1wAZghnQKMOnlnlZyZEj65SY+rWzVWiu7Jg1Nhw+OdjqgPdhN+/N1ziWQfRxJTF8y38IVls+JE3fSsE3dtgosQHHUmBkbXXhryXFxc4GFCKcG2/7Ttg+xlooWD4YHsuv0MvLYAqtGbBOczqBn1BodqUgQ/1RA22nBFDF5vgGMfwc/eymYo3j2e9J7e2CMePzz3zlO7Tg1TZlN4al9YEUiakQ0fSTazoG+ALtbIffVBMQ2caIsrLi/Fs17ZSqYX89pHeuCtefLrZpLIJ81HocJPxLtOJd+5u9rUKuAMjcGWXFcQoAsZxkctuzDOr9+WhAi+Nlw1G7LCuIX2QqeYMpY6r7qeBfwVF41SdogMjopj517
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(346002)(366004)(396003)(136003)(451199021)(41300700001)(38100700002)(4744005)(7696005)(71200400001)(82960400001)(122000001)(83380400001)(26005)(186003)(6506007)(53546011)(9686003)(55016003)(38070700005)(86362001)(478600001)(2906002)(316002)(66476007)(66446008)(6916009)(64756008)(76116006)(66556008)(66946007)(8936002)(33656002)(8676002)(52536014)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+pyCIUmIYkvJNspvzFte17lVhtJu8L0BnVv3Nbr2E6EoZuZYawtdE2yseDGt?=
 =?us-ascii?Q?kJvn37jRGsV5VaCEy2UDDicrS6TdD6jLYKX6Z4b0sGjp5Yjeh0AaezjEa+Fi?=
 =?us-ascii?Q?lZ2TjMDThufuuyXLNlrxHamBGOV2DrA/1mVBWISiliVUeRK7OV9N3FXiEMw6?=
 =?us-ascii?Q?KuIlbZcQTFcIdLXXTFvbOTqrp1/vDB2PbnS0CWsXd7p/mruqsYvx4Jwa/b0j?=
 =?us-ascii?Q?C72Xitex1SYh25bgPSnFUmpq/NKow4knpJP4zLuNulLYfyP0HRGYMxmEUnzs?=
 =?us-ascii?Q?cuGnTF7QGeTPaP0D60H32Ko8IuqP2Zrj4GkDVhWnaXzGYY8hj5X3Mg/QCVuJ?=
 =?us-ascii?Q?bfQ9n4jozSywIDKyfBMuau9dE6bTMy5B1oWmv7g3VgcmXugVj4J3QtPSzusg?=
 =?us-ascii?Q?1mJmD7q/WSscu+uefRc20PTZ72O68TI2kgB8j8lxQ4Cab2TUpXddEKX0G7ao?=
 =?us-ascii?Q?eLrXOXKFiPKNTyM4RJys4mIc5UrZ/oQdzbWVpQynydyiMDck8GNgHgX7tc6e?=
 =?us-ascii?Q?BK13pnHhQL1cN72rMl7SR14cU7NDnqgZ/1wdSlHOfpkVL0vgC+fCWD+HzUW7?=
 =?us-ascii?Q?tK9eykxh4Yttdy6nHHKdpoyM63oQ8mIwr7Gjb42F5rlTGjtqeS3PQ+ZAn4d5?=
 =?us-ascii?Q?xM7+iBTwkOVqsUoi0x6xc3TucpMYljY3xm0jhhGlVFTQ/a74ktoe6uBO7G+4?=
 =?us-ascii?Q?C7E5F3cogIj2FGZBJcGVcu1iuxqgCFWj/YnJ7k06TGVHT3IVBAycYYa+GB2A?=
 =?us-ascii?Q?eYMJVbhkyqeC2tBoUI5doyyUK5Ci5giAIWnxngE3X2XGuyqoL67IHk96IUu6?=
 =?us-ascii?Q?bznset5GGLoPkYc74UH5ezfsM/luGrlyImgD6j+YNZqFg854KZ///IOT2keg?=
 =?us-ascii?Q?pFl5NSE+bdT6Ypg4m8iHvJYWrXP8vQHKHmXG9pSQkR3teK2J4G+ydX2z/4O9?=
 =?us-ascii?Q?o98TOTP5hHlB1MS6iitAtLpTycc+9EHLLpMcZOWAbIgYGMWpPYF4LLEdM+bE?=
 =?us-ascii?Q?xtchgYKHB0JOxVO47nF6YvLoxSjxXheXArZ3swxFIqLzgRZWgDy7hLjkCRas?=
 =?us-ascii?Q?CCRdOAj02iyJnHQIzGNuozjs0/S+ZTlNywy9ZYLc8J4AY2OALGe60Tmiz72i?=
 =?us-ascii?Q?R8dlPnA+JuCQrKtNstAtSHjK+64C2o8vfc1WHzMV6WgHLCR8uol353JUw8HP?=
 =?us-ascii?Q?ZP+TRSUc1CvRigVIg8QYj7Ms18D7DM/L+9wVK2UAgar+/EgEGT80nHVhZFnn?=
 =?us-ascii?Q?VCwlzyPMmY1Nk0AASYJfMu8aAin4NF55TpRO0zYuAWLt884zOEVMiL28NL/Z?=
 =?us-ascii?Q?VrJRwbhYlyTxKlsnrjtdRjP7ytp0dixqCSkj5BMJ9ry180WOZOnT7iNI1f0/?=
 =?us-ascii?Q?p7JZhBDDQCHXfcWbm3iKkFPWN9Qmp/Vn/Mizf6qfu5kRlH3CHFaI3TMjkamF?=
 =?us-ascii?Q?L+3Vz7xsS1UiOILT9+j/vfDFiMS/wfj7pfUT8ccLc0WEZiRjmZSpWLcV3IbM?=
 =?us-ascii?Q?kWDNmJBxL+gXb648/VbvPCnQRPGh7Bo4AvqYfdoi+dGevwzj6rUvclypxbpw?=
 =?us-ascii?Q?YkU4dQyULY+rgCmkvbfhKCQC3bTYFicF9y4IEqNLHPnba0m83xHg6RDFf7Gt?=
 =?us-ascii?Q?wA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15a9ba08-bd0e-434f-6483-08db7bcaee3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2023 13:39:31.3614 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rzLPUacIKHR8brBh6pr9tgE65ASWWh9ieFfY+kUoQdCuNXin0IbasNX7huKPZPeKTRpr+cEeqUwEDs1jE+gzxxr5FSBlVX+OrfuIW6DXPuI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8308
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688391575; x=1719927575;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/5SIbFGNhX7UT/XU09+KNkyDJyyVFiWBC6YV6lgCFYI=;
 b=fpVzztVWYnXnt3cn539cr8Fh41d3/S6OO/AVGc5WQdRDZLYkuYULcy6A
 YNLYBxC0iWlOdgzPfO/9Dj2M1LBJEtOA/M996MExgXK1T8TevE5KWTbia
 faq9pu+1Q+2/7yu0tyN3MRK4XvaG6jzDCEsWs4Mhjiyro8vOmHAnFiEq7
 KvlnYwY6aI6+Cds+0XiRO/p+NmNoGQeEoYQan+0I6JF2BopIen6KvLZjL
 vYa/QAYH88VMZfTcKqVal/S0ydu1vOEKILEPsewgIlZyiV4QZ5kNoUxe9
 nFBTox8itZ5vs/tfiEomCrXxWmAjg2oFV3Ht7vx2i3v0aj357bU9WPlhP
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fpVzztVW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: Fix max_rate check
 while configuring TX rate limits
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
> Sudheer Mogilappagari
> Sent: Saturday, June 10, 2023 6:10 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: Fix max_rate check while
> configuring TX rate limits
> 
> From: Sridhar Samudrala <sridhar.samudrala@intel.com>
> 
> Remove incorrect check in ice_validate_mqprio_opt() that limits filter
> configuration when sum of max_rates of all TCs exceeds the link speed. The
> max rate of each TC is unrelated to value used by other TCs and is valid as
> long as it is less than link speed.
> 
> Fixes: fbc7b27af0f9 ("ice: enable ndo_setup_tc support for mqprio_qdisc")
> Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
Tested-by: Bharathi Sreenivas <bharathi.sreenivas@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
