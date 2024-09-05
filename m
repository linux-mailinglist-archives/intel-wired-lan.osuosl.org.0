Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1BE96DAEA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2024 15:57:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67BB36058D;
	Thu,  5 Sep 2024 13:57:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I28apttiaPxM; Thu,  5 Sep 2024 13:57:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D78560A71
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725544631;
	bh=kP2lub49rc2Gq9hohdEnzuaHMcyf8kfMzv/Y3cdkbpo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vhss1DsIjkjUc9/puhgoOGFhiBJ5iIzk53NebytRBo+wxCOyjguhvxOez11CSiE7q
	 x8j32o4D4F8PQoZf5ho/lFTfo6YhLKabBDcwOuyQtho+x5mgctH7FITfWyAq7aig4X
	 +N9h2NT1xacnOuKqNaftnomNcMB1W3Tl3ZFez5dYj9PXGpBwB3Zp4A0yNrwUeLvMHj
	 QxnF+R3IDgYBN58pRAjqIzs4B5af4r+OqqacvLQHeY0mS4KV0l0/SMVtyOULV6m+5Z
	 wbPpDJ1gxjpc4RUgL/Oi86M/V1US/VrtzdXVKdicCrjLSetII1PYcAKT3rWrjQ1Y0X
	 nR+pBQHxtzhaw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D78560A71;
	Thu,  5 Sep 2024 13:57:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 61D9B1BF297
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 13:57:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5B584600D1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 13:57:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WvGFLao08FcW for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Sep 2024 13:57:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 447F460034
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 447F460034
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 447F460034
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 13:57:07 +0000 (UTC)
X-CSE-ConnectionGUID: DFnxcVxCSACY24UsFWJzMQ==
X-CSE-MsgGUID: a5oDpPJ0TQWvdikU6Z8hiA==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="49666891"
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="49666891"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 06:57:05 -0700
X-CSE-ConnectionGUID: 03p1R4vDSBiiV0njr49ERA==
X-CSE-MsgGUID: 9cuQiBj7TnuDXdYV8J+PNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="70428242"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Sep 2024 06:57:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 06:57:02 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 5 Sep 2024 06:57:02 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Sep 2024 06:57:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JZzo9g2nDi99z9hbjYmdTBbZJnMW5Ag83b7pCzAScZQ+P5n9x+Dh9kYNs4jlGxNFt36mjuCL2+pQ5HG20zh7EDfI6GWvHUd2n4839DEa0OcovulelyrkO8UR6XhARSKys28K/HbhtTUM3WX5EDWnqn1o+/lW/HN4EZUyTrWd4v35TEuWsmJ2ZUbvJPZbKQNvZzmAmUN3zUrk0Fv9eC6NraqeNCXJQJOo5mGcG7xDI4rN812jRHfyFeenUIFAm2Ko6ZudvmbJr0S+HAw5xiv+Aaibgl6x9GwdSTfRori/2eoRP0Y1P4ZwsAn5PirTyqf6A93c7r6gj3Vns/014p/kCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kP2lub49rc2Gq9hohdEnzuaHMcyf8kfMzv/Y3cdkbpo=;
 b=b4APlN1Bq1q85XkUgFF/DnoRajVHAvR2FP9Ey5jbqE86niWDbwscV5F6iPqzmgDaRyATlemXTj+m3FV47dxOEyzhhuvuoPYBWTEa6+LLFGcJAm68Ezc4nxZ/8+x8u+n2uSYX/Im5puzLmZEMVtxi262QLiRHaFdcr6QrSMXh/ERIjMIvIyYQW3HxIUexJ/8cjLPMneRzsgYfNqg4rg7kgdwBOFk8YLcm0j354bX8ZRDi+qAIFbwJvyRg+t3GF04NARNWxH01soAbRK43fU4oNCI0UN617ES0N7eNog14SYw8YiAg6aD9X2bXpofuDOxQR91bqB/QRxAex1vyq3Gpsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 PH8PR11MB6659.namprd11.prod.outlook.com (2603:10b6:510:1c2::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.24; Thu, 5 Sep
 2024 13:56:54 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.7918.024; Thu, 5 Sep 2024
 13:56:54 +0000
Date: Thu, 5 Sep 2024 15:56:43 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: <intel-wired-lan@lists.osuosl.org>
Message-ID: <Ztm4m9gnWRBhWGqE@boxer>
References: <20240903180511.244041-1-maciej.fijalkowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240903180511.244041-1-maciej.fijalkowski@intel.com>
X-ClientProxiedBy: MI0P293CA0004.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::15) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|PH8PR11MB6659:EE_
X-MS-Office365-Filtering-Correlation-Id: be9b8b22-413e-4841-1fc1-08dccdb299c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?YczuhqYkxT5CxDLgLrvCMA7UfT9AFSTbysptgTilYSiQe9H0S67k2Y5O5C77?=
 =?us-ascii?Q?XHKPnHm5Klc8T+qqQT/9aIIWS6zg7iQzuTtp4i38KWFubYAu1HZHgF/cHFsf?=
 =?us-ascii?Q?Y6isTl+aVphLWLi3E7XW7ulRdTCQMAxjq0zrtwUrYVl4iizJXcw+i9rcTe1L?=
 =?us-ascii?Q?b2LIlf2Pu6ykjv/EQAh0ySDfQD0Yn8WE9MxPYacFGqGX2AW1UtluXrlVck/K?=
 =?us-ascii?Q?VX5pm8Z0H6fqu6rT1Z6EBXmrcOieTV1V2aF6SVQBH9wqk8RLqaMN/h0WoRS/?=
 =?us-ascii?Q?5FyE3yB/Ax1f84OHNSmaFHSjCHtM39/5iGMfpRgvx2xO6wxZjx8D6qZML5B9?=
 =?us-ascii?Q?RAlyPDu1+OUtmXqm/nhXUI409WUA94z4fjs4GRHKUeYBcNKkBW4yITNsot0A?=
 =?us-ascii?Q?oX1q6h3Es02CwMWwoTzIkC8W/Xf1pQ/l3ZOodJ538s4sCnHWQM7rcWLSCNqm?=
 =?us-ascii?Q?eDp9ln4rbcxGD2z/LcMnL9gQbrRjyVxhBOcVa3BnY6t88mb9si/B6YTZ2VtA?=
 =?us-ascii?Q?wZ3YNcZBgImWOnaMfSgVSZYz0RrJv3yNXAwSyut1lYahrlPEWEi4X+hCBwYz?=
 =?us-ascii?Q?fzTkHkgivBi6QAUpr/YB5hvBCU0JKkKkgk2E5BLVRYdrwCr8zzK/ubtn7kYT?=
 =?us-ascii?Q?mTM4jfOUR4fgcTisx5I33yC6iATToRImFzlv9IoIxWh+R/BQbjFWwg8n/HTd?=
 =?us-ascii?Q?4EjPU2sBncNCRr6j6lnI1WTrCpqZtQV1W9+V7ffGM6gyxVoU3Z909FcCTjIe?=
 =?us-ascii?Q?daZRPh73SXwkM4mDxb8/Gfr+8ccihhPWPa7raZcXJW5D+bkax67bAyaqC4rb?=
 =?us-ascii?Q?Ml1y0YgjR8KgU4P+JCQt4bDTWVwZlmmru2q/KnH+NKvGa+mEeaSDYIWastDf?=
 =?us-ascii?Q?mVcreypwUSJcFtZuzEnTJeK+K3m8RuiOQfBe5Ez3WRXVb7+Dm1ayJqtYrJi7?=
 =?us-ascii?Q?pChrelpHBkbGXdyNtN85ZUY8BnRliUDN2/rwz41OJYRiiNB9T3/KBrFfs+3r?=
 =?us-ascii?Q?td22jozdSOGCAmwJgEWZoA9WBQHwIgKJo7/y43u5/xGoIWMUr13lhyEp5Ndq?=
 =?us-ascii?Q?7HtzopLuzwsTT7CA+8LezCzenYEYH8G0ZgzFubI41XetgmBbPPHPoVlx1AzX?=
 =?us-ascii?Q?z52O8i6FRj2psLqy8yuVhwM1aTrUmqC+mJhBPDZVJ88ZSValzu1Anx28qx9c?=
 =?us-ascii?Q?fdfUurcNzfAkChkTjb3gVM+Tk+2hFIHnzFpJsqkAAfrIL7eSPES7Hp8SDylT?=
 =?us-ascii?Q?+uFGTeklBbg+2FSk47a+mRZxBDX8zjQp/dQqRiUn2O1fWIqMHx6zrfCKJ7V0?=
 =?us-ascii?Q?rtKb3UfK2zVjQp4kMuG+Q9fxoajV69s0CYNzLRNDPNsMcA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BCSPrHEbhMq59U/+PhyshPwFZCvOVUZYgZUD2ArId4gdpPjr5zYFUzXvcadg?=
 =?us-ascii?Q?GoiMHXP976zu2/T+cYYtqrFE89jrwjFOASk0jK8iG4Aa3cN2PtavHdXjUWxi?=
 =?us-ascii?Q?IbuY66VmX5ZgzWmhmXIQt1VczM1SI1UuAN2ZKe77qJuSOyl8y+tQccgtNgyL?=
 =?us-ascii?Q?cquVNKyc5URitS7ino2hx0sAvrIlC0ztvh+WhSFvlW0MYPoovcwEtTYsZRK7?=
 =?us-ascii?Q?JCZPi7Kmm5KZaMKITMbA85q99HASh0i8uWrlGcUw73o8BoGFGX4w9E0v8mB2?=
 =?us-ascii?Q?i8ZeZqgDI0C5pVUaYvWoFUzqNJYHBxEcYGQCkHdSkViK4juRpgEqAWpTS3A8?=
 =?us-ascii?Q?EeOk7a1x6kjMElzotAuxILUSH/xRQOdZW973XYWJCYZTthtr+Q8L2p5s8Z9H?=
 =?us-ascii?Q?XHXKVfKjykOUei3RsLgjtsgLK1/1M8FG1naWZJgYy+nMWXqubIrXJg/k0aFC?=
 =?us-ascii?Q?XSVFwPr9UPSVT2kumdLawvx5LLF9vSAlu7IZNE6ZkSVXkYMyQz1wXgJ8kksT?=
 =?us-ascii?Q?08YHx7p7ztyPzhdXEiUHkH6rgORnYDxNOQ7gxU1a0PF/OFy/s7YgWu+LGJEa?=
 =?us-ascii?Q?4qNeYY1wwSoTKTSQm/QCElxJLMM5Glhy6IvrotngpLJNP62qQV6AniBTZHOZ?=
 =?us-ascii?Q?JfsyAzcq8UsubS4wrSY31dF+GREvhC3wgP9JhqMb4WEBcJ4JNVeZqfMgBgp8?=
 =?us-ascii?Q?UYgpq1tXaGNhoeufIrNv1s7uow9CPuIypWAZo0sHUoivdGvvapa9TMkdtFL1?=
 =?us-ascii?Q?Xr0xkozxQV3sUbJoeLJ6xkgURVG2I+ozgtdryJsNdWDBP9OXfhDygNLs5vEf?=
 =?us-ascii?Q?uL9DsfABVv8xwoY3M2QvEXfXs4YuzpAKoSeoOSvOy5xU6SUa+X3S+2/Zawmq?=
 =?us-ascii?Q?0QDqW3Qy83TDzP3kGlQQJq3Ijlip0F+pSZRz7AhnIvm83cQ321p1zpxHobM5?=
 =?us-ascii?Q?jNiyhC7DEsr6O4Wt7FQubZLbA+b8BftCF9lOsighsnLtll2S2uzso0jXTze7?=
 =?us-ascii?Q?Oq2KvXCrNtnywIT/Xe7i/z0lbjPYzaudPXLJVlJsA9buMgds2NMwQhEFc8rq?=
 =?us-ascii?Q?R34WjktFSzDGYqUoazAN+d+nCFZl5dAn7HEpk0pBrFjbVu9CA5eN1dL5wLfW?=
 =?us-ascii?Q?duumAE0adRD5jarYJ0bLuFuFZZt8zLanM4xa8431YDsJ9Ox8MyyT5fjWBWZb?=
 =?us-ascii?Q?FJjn9fuT3/5cO4LWLxN/cGpeB8PvFny9LYsFYaAyRuNHe8OWOuIfnl+kjWIK?=
 =?us-ascii?Q?EAPdvCr6PBzUp6DVfxDytCF7Ig3XI2jE9UQne+sd5eyeUYse20+7i9zUL2Es?=
 =?us-ascii?Q?KAvkASI8tvErMbY1IwrD4FyM6AYY155gQGBErUHEVVXofpasBUKHO4uEEXXD?=
 =?us-ascii?Q?qCRScvSsMSQddbJdaKeQe11eO2PRZDYeOR10evEApPMmbgcI7NI13V5iOOkR?=
 =?us-ascii?Q?pvzdkflZ0CXhsfMwuqBkRWFF4nNWEzhHwkBzxfgmYbGQNehXCazHn0tI2Cx1?=
 =?us-ascii?Q?kHCxrc20ABs9L5WfHS9Rmin8PuHdZPo/EfESQRmWyoobi7K5Un3yjhRWF/hK?=
 =?us-ascii?Q?HwivVjQSQWjm9ZsHAbuCzfzxNmDMo++LFtbtvvsOc+PlxJGWSjGz8hDL4qbE?=
 =?us-ascii?Q?wA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: be9b8b22-413e-4841-1fc1-08dccdb299c0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2024 13:56:54.8139 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qPt6VDJns/KTt5mOwav3CHk/InBAFBXGbDIpV24f359cRmPesduIGCYJ7m9T7yw4AwNqScBHi5fXPSxSTvlGdPRVXGmDEyImm77Ov9+G6XY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6659
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725544628; x=1757080628;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=RW4lpxJrsaIjinjfA8/PcbZ2cjydBNGuFF/aVvpRsUI=;
 b=G6hAnbfj1WIF8loYlJQNYGXU31JpkCUNhelx8TTHtpUKhhGHrju/exkH
 oeA+9OzAVdK05Z6EtXfHR7sEEyNd/YMoB0uWKgzx9sxzWmR01Hnqx6+Gr
 mqED5rGp8oNtEVXxSliNW/PB1Cfkef+LvDA+M83tYl9CDUXdPlxoqPlew
 GdXv8ONOboPLb3ukcEsHbwprPGhoKpGVk87BT2sBrIJBUzo+R+Qftwxo+
 F8YOpbNCXqsI/NoNspLTBMEQJ2U8+GUnw0PzXv6+Ts0c6xWnksUk1bkZf
 TT8/O1094OfjYwmiBXbu6KYs1BGwpsfRBYSCczamNFZc0243xR282jyWl
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=G6hAnbfj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: xsk: fix Rx allocation
 on non-coherent systems
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
Cc: netdev@vger.kernel.org, bjorn@kernel.org, anthony.l.nguyen@intel.com,
 Dries De Winter <ddewinter@synamedia.com>, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Sep 03, 2024 at 08:05:11PM +0200, Maciej Fijalkowski wrote:
> In cases when synchronizing DMA operations is necessary,
> xsk_buff_alloc_batch() returns a single buffer instead of the requested
> count. Detect such situation when filling HW Rx ring in ZC driver and
> use xsk_buff_alloc() in a loop manner so that ring gets the buffers to
> be used.

Instead of addressing this on every driver side, let us do this in core
by looping over xp_alloc().

Please drop this patch I will follow-up with a fix to core instead.

Dries also found an issue that if xp_alloc_batch() is called with max == 0
it still returns a single buffer for dma_need_sync which we will fix as
well.

> 
> Reported-and-tested-by: Dries De Winter <ddewinter@synamedia.com>
> Fixes: db804cfc21e9 ("ice: Use the xsk batched rx allocation interface")
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_xsk.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
> index 240a7bec242b..889d0a5070d7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> @@ -449,7 +449,24 @@ static u16 ice_fill_rx_descs(struct xsk_buff_pool *pool, struct xdp_buff **xdp,
>  	u16 buffs;
>  	int i;
>  
> +	if (unlikely(!xsk_buff_can_alloc(pool, count)))
> +		return 0;
> +
>  	buffs = xsk_buff_alloc_batch(pool, xdp, count);
> +	/* fill the remainder part that batch API did not provide for us,
> +	 * this is usually the case for non-coherent systems that require DMA
> +	 * syncs
> +	 */
> +	for (; buffs < count; buffs++) {
> +		struct xdp_buff *tmp;
> +
> +		tmp = xsk_buff_alloc(pool);
> +		if (unlikely(!tmp))
> +			goto free;
> +
> +		xdp[buffs] = tmp;
> +	}
> +
>  	for (i = 0; i < buffs; i++) {
>  		dma = xsk_buff_xdp_get_dma(*xdp);
>  		rx_desc->read.pkt_addr = cpu_to_le64(dma);
> @@ -465,6 +482,13 @@ static u16 ice_fill_rx_descs(struct xsk_buff_pool *pool, struct xdp_buff **xdp,
>  	}
>  
>  	return buffs;
> +
> +free:
> +	for (i = 0; i < buffs; i++) {
> +		xsk_buff_free(*xdp);
> +		xdp++;
> +	}
> +	return 0;
>  }
>  
>  /**
> -- 
> 2.34.1
> 
> 
