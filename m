Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E0980830F1B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jan 2024 23:15:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E07A6615BF;
	Wed, 17 Jan 2024 22:15:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E07A6615BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705529713;
	bh=GS7ZyEhMl72e1uTCPxCGb9MGBKJ07rUDfNusN68ecN8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E1X03RbGv7XiI85HtK0PKr+NIQB+EhmTlvB+Gb8P0247GpLHbesoB2c0chCjWc8LV
	 c1MnLkpL2/go4Q77b/tvmTfMmtcinys6f2hghwIBVfiwIs7fSAgPOJXzGN/TtMQFsv
	 ffPXsprCYPAA2jknRHjpUVBWrVEQXo+bME78PaWBvWevLkZWdeYEYWr8ViGYWVCl64
	 fygU+1lBJkwobshfCqKBz/QoE2MM727O+HAaqr/zNVYVSX02oSYhL9vF1Fz2qdldeI
	 yqwUE50QDZdCU8oKpWoDa8DEsOQwTA6kigf3IKMX1Z4LNJeLt56fC3Y1Iq/QXZqyMa
	 BEsnmGL3lCEtw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rrWz30CiqO4i; Wed, 17 Jan 2024 22:15:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BBD37615C3;
	Wed, 17 Jan 2024 22:15:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BBD37615C3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7097F1BF484
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jan 2024 22:15:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4741C41EFF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jan 2024 22:15:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4741C41EFF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I3ADxGkbpcW2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jan 2024 22:15:06 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 17 Jan 2024 22:15:06 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E2B941F0E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6E2B941F0E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jan 2024 22:15:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="191969"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; 
   d="scan'208";a="191969"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 14:07:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="907862803"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; d="scan'208";a="907862803"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2024 14:07:57 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Jan 2024 14:07:56 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Jan 2024 14:07:55 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 17 Jan 2024 14:07:55 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 17 Jan 2024 14:07:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TPK6JI087jWMkSfS/TaxA1W3RdPLA3uozsZsq0Z2ZQyYkoASJsJPOXT8oGo442TvQ1F8d1mWE4A0omtwvp25086JcK1lZzBkqTbLxizArEanB4+I0K2t2vUIVps706PDG1nx7zTsMM8jFLReye6ZG9xZfT3kceLMV8bsgFXpzicH/yyN4cp46Vqv3okoVshaRurVxHK1C/A0s+q6JissEJ1HSQbec3f6vMiN9i3MiJnwiE0BEQbxVznG0/nYFprJpgs+xd9Fs+64iwFVZtvgK210IdnNfh8Y70o2MFnJU3aCvpwoe5fNe0niZduqcnpzfaE/01C9jRdqXS3RzZBcPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GS7ZyEhMl72e1uTCPxCGb9MGBKJ07rUDfNusN68ecN8=;
 b=CjPdmBRsYEcaVV2YdGBpyJab0eXsnWzbj3rDa/2evVvhWIAsW4fcdKMWagIXhRmi5N+zj3lvgfXd0rhhP+5fAUKCOzbXf19zMTq6I8+0vXtMVgGARSx31+8Oxekpt0yCHHdjYdykWsQOwro5HSW1TYbOh9BiT1ewUNId+SCGwNKHw8xc5S6VXVSuJibCeTqK+SQZxdDYLQCAcOBGCao6xWkbKJqOxiZd+w6QiCCSu81RUs6gPydP8vwI5zpR2qBLAL5d8dR+QrO6QguUnNer7efp/S3xCMl9EarZCqFfgipv1ylswGMgrxthH3rUOrdS6xjlv8BUhhPiJlIVFGuY1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB5135.namprd11.prod.outlook.com (2603:10b6:a03:2db::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.23; Wed, 17 Jan
 2024 22:07:52 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::4069:eb50:16b6:a80d%4]) with mapi id 15.20.7181.029; Wed, 17 Jan 2024
 22:07:52 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Simon Horman <horms@kernel.org>, "Kolacinski, Karol"
 <karol.kolacinski@intel.com>
Thread-Topic: [PATCH v5 iwl-next 1/6] ice: introduce PTP state machine
Thread-Index: AQHaQjDZpFds+jSiIUCNhsEf8CQQiLDat/IAgAPmgXA=
Date: Wed, 17 Jan 2024 22:07:52 +0000
Message-ID: <CO1PR11MB50899045B5B747FC216134EAD6722@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20240108124717.1845481-1-karol.kolacinski@intel.com>
 <20240108124717.1845481-2-karol.kolacinski@intel.com>
 <20240115103240.GL392144@kernel.org>
In-Reply-To: <20240115103240.GL392144@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|SJ0PR11MB5135:EE_
x-ms-office365-filtering-correlation-id: 23691dce-4477-425a-b382-08dc17a8bfef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0/skvhpP9jeSz4fXuOzbHuVyXj5nhNmOMAf53kkLDl3nupYvHXcdcQu1ohy++Xz8+l5Kvn1fPSbOYMiLFPW/iTwZqmnF556sdbBCF6EXLXlTFoPzrk9Dh+YCzU8bWs9aTIY8M7Whvs4eb711D/eZeM7p0TFudVU6uD8D+x+lkUIffyTlNpWWTcCAB2ZhqFjHYUVh+rRGYdxip5jBOjeLuRxodqibbK5EWC/IX0WLSCh+vShQSTb9k3hAd+6aVJpNO/k9NOflJz1J8GHG+B6cTL4EHj34ZXBf1eJcM8pZHFrMzu4qYxWdbwCw1MasCTxl8WFb2Xx7usr3tifX2HrcnJcVPJtzoh9lp2MNheA3OiqGit9yhehVEvMgbrgO7PTv+a+gD7FuxOvIAXEraIVt27rwZk0CoS6a/q9INa8Mjl2f4E16o5EpiDnSWAcOk4zJXG2KXUNDOmxde/1LcOuG7f7ncRvgln7r588qTK1o/dD1MXFn6qwlPD+j03Mf9Vaxgsp+H58jYvyfwaUHKXB54jLhqGQn40/CfVVb6i/zcTGWBdy2MI8OW/x3q+O0WLGPJqv6bzLGaaeEZ9Gn/A38SjZYoC3cXw/yudooR7ubIJ4bwMTz2qDFRAvmPZMYN5Oo
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(39860400002)(136003)(366004)(396003)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(4326008)(5660300002)(8936002)(64756008)(66946007)(54906003)(6636002)(66476007)(76116006)(2906002)(66556008)(66446008)(107886003)(26005)(71200400001)(316002)(86362001)(33656002)(52536014)(110136005)(82960400001)(55016003)(8676002)(7696005)(6506007)(478600001)(9686003)(53546011)(41300700001)(38100700002)(122000001)(38070700009)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rZ6qf98H0qyuPd8ebuyEhRNecjLlFZOGYaotLjWO0HLXRl375QUDr9AoxQQM?=
 =?us-ascii?Q?7VT32WvlBV3FwteLR8/dbbGEC8f8eyQu6dBqmS/b58kDuNh5Pdhx6vcIPy0h?=
 =?us-ascii?Q?xH59wBlpswCpzAxXMrPnKlHpzoHH2xgUIjMT0FEnh9ehHUAAVU/YxqP6ao3C?=
 =?us-ascii?Q?iGR3ZVjpnAz5IJAwe+KvWkAk0Jquoua+gJgBsot1lq1VsaCQ6b6J49zXs5p7?=
 =?us-ascii?Q?ND7NW14CIzfa1axYqVFLu0f7lPaw9a1ElanjF4cbA3Aa3KpzDrEthONtp0MM?=
 =?us-ascii?Q?XJbsFyEv/5UglxytLLq6wqzFGYt82J0KTr4TEKdjWFj0bXJ1BE8hWE+Shdcy?=
 =?us-ascii?Q?QbSEA3hyLj8BnXSA8sFTuZK0mX0xwILCRQjfqP5f1pt6IQWrInSCvmCubPt0?=
 =?us-ascii?Q?BXJVPs2DYadqXz+Mhxd9fa5Nm3Xs+99NWVUJqJSOn6M3rPA1Md9iK9JVGFE9?=
 =?us-ascii?Q?GHJu+c5jeU+lcQu7iA/V+vPVGifEKC+xoEQWmq5szeOqX8M+9xgKcQMQhEDJ?=
 =?us-ascii?Q?s4OwJmh4Mra5hUXWkxfHf1I8c1o1E60jaiDNY24mOCDR9PsiL3Cc+RumoSF4?=
 =?us-ascii?Q?+Sgh5jQ5eJyUKcN1yi2awZHbaklRK06hzADd+w7wBW9ACpi/vsWWD+K1V07g?=
 =?us-ascii?Q?e2cSfyge6kB0Z0SKk2ahXOdYsn0JNbStS9JFonWE2s9/X2z36kHLt6uVohqn?=
 =?us-ascii?Q?YbUQ2sjGCUvouemxn9xNc2/lsWIYwaLGX9fjAJ0L2pjE+5jHpQoz8wLt55gK?=
 =?us-ascii?Q?fBQnJEuHael0l5xhoZATENS5X1BGlMjJHTjNH+p64jZDJA+4sPU4d8n90RCI?=
 =?us-ascii?Q?MIPGVlAZifnDU0+ZTpptvxMX4N90TRaglZ8fh+zdK47GLoEuo1EYWcj2GnWx?=
 =?us-ascii?Q?nMplXPyrm51pItbxYw7JsDuNFFU7FGWfhTEolaUwlx2jsFzZWdQL5zVVWNhG?=
 =?us-ascii?Q?NEFbYxQqZSiIlKnLNbinigND1nJcWPb/GxcMINigmKb44hOjSb3H+OrgpZa5?=
 =?us-ascii?Q?G6wc5IvYcUX6yFnu1j5undUF3rDZOUurlvhQzgqSBw7xNlhEBm6OmvzMbpgP?=
 =?us-ascii?Q?D47kyok2DMS6SWQrtEwVfm6O+QgKaFX7hQeZdWkE6XQRafHz/GSTOr8RxpdY?=
 =?us-ascii?Q?epLL8C8JnzpJLEQoljwJ8I5yBGS1mYRbwPOb2PQtfejBQWkE6ElacBYIrjDq?=
 =?us-ascii?Q?3ESkkfQsW8gyYfk5NSyROxLcrcry74l16+v0oJJxSWCW/pMsYxoJiI7tGcg/?=
 =?us-ascii?Q?7XLCHFTHd/8QO+1BjoJyCKqqgLukhl/nGLZnasq+1CcZHAI+I+lU4vf97QPZ?=
 =?us-ascii?Q?TsgTKlK7xiSRmv9DHCK3E4XTLTYKqYJj85xMDuSs1z4yUAU5/6oG1dkDpZHr?=
 =?us-ascii?Q?7iNljBk/fcs2G9qPcbswgcjzBIdWc1RvSCNHRgLknYAixXQsXzwmsSzzKEPn?=
 =?us-ascii?Q?erZvx2sHD55ZMCX5qjj0f2DAcO/MNni4F4isiKUaUedvV+B0bWZ2D4y/TfhM?=
 =?us-ascii?Q?JdewNYzUk/euB/Ks6a92BDq3agmoIOlORfljPccWTVNXEVuwwR8bJYpWlNZE?=
 =?us-ascii?Q?8TrolnTDdkjDSDHL3inDZ2vjkptMG2O0fyTWGRiB?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23691dce-4477-425a-b382-08dc17a8bfef
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2024 22:07:52.1474 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /oKSwUO4NRcfAieRLIFe61PiE10FS2duHR5qELROLfWCi1v+hZMj3T9NNwDdTlsAb/T9S2wo5kXQK9NMeScjIKoV+NpnZ/CiaTGAWdNXLvE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5135
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705529707; x=1737065707;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3uXx3d83qEBx40/LOqQ95uON6UvOcXRGSKZq+FlTuYE=;
 b=nUZpb5G/2VoaRHZmNsdwjilO8rcxuHvtZZL1rq2l5cIrd3FuF+9H9tOh
 nicNBCUVaepPPXHP4I1vwgXfXaHXUBzZB+nX+jPThYPhv9T576aMe100G
 ZCyJY4iZsyuUnUTwjCrLIc3X8BC16JvTyXI8h77FP3cNnanSIBrtUHYnj
 VYTyT/2gaWjqAvgSrIWM9oAi1Iu/BHdPtn+9MjsI/886lganSu1FZa5yQ
 TKysAcKLADpW/4M9TokSbIrIe4BdZpydehxST5OykV2LyM//VjwYOTMCR
 2NkmCQ8Cv8LRulIawqYLAgkNUKpJf5nPg0/CjqkRTK7rgwuA+LUbBHyYR
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nUZpb5G/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-next 1/6] ice: introduce PTP
 state machine
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
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Simon Horman <horms@kernel.org>
> Sent: Monday, January 15, 2024 2:33 AM
> To: Kolacinski, Karol <karol.kolacinski@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Nguyen, Ant=
hony L
> <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>
> Subject: Re: [PATCH v5 iwl-next 1/6] ice: introduce PTP state machine
>=20
> On Mon, Jan 08, 2024 at 01:47:12PM +0100, Karol Kolacinski wrote:
>=20
> Should there be a "From: Jacob" line here to
> match the Signed-off-by below?
>=20
> > Add PTP state machine so that the driver can correctly identify PTP
> > state around resets.
> > When the driver got information about ungraceful reset, PTP was not
> > prepared for reset and it returned error. When this situation occurs,
> > prepare PTP before rebuilding its structures.
> >
> > Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> > Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> > Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
>=20
> Hi Karol and Jacob,
>=20
> FWIIW, The combination of both a Signed-off-by and Reviewed-by tag from
> Jacob seems a little odd to me. If he authored the patch then I would hav=
e
> gone with the following (along with the From line mentioned above):
>=20
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
>=20
> Otherwise, if he reviewed the patch I would have gone with:
>=20
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
>=20

It's a bit odd, because I authored the initial code and patches some time a=
go, and Karol has been working to rebase and re-organize the code, so in so=
me sense he authored part of this. I think a Co-authored would be suitable =
here. Additionally, I reviewed the result before it was published here.

Thanks,
Jake

> ...
>=20
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c
> b/drivers/net/ethernet/intel/ice/ice_ptp.c
>=20
> ...
>=20
> > @@ -2640,6 +2676,16 @@ void ice_ptp_reset(struct ice_pf *pf)
> >  	int err, itr =3D 1;
> >  	u64 time_diff;
> >
> > +	if (ptp->state !=3D ICE_PTP_RESETTING) {
> > +		if (ptp->state =3D=3D ICE_PTP_READY) {
> > +			ice_ptp_prepare_for_reset(pf);
> > +		} else {
> > +			err =3D -EINVAL;
> > +			dev_err(ice_pf_to_dev(pf), "PTP was not initialized\n");
> > +			goto err;
> > +		}
> > +	}
>=20
> nit: perhaps this following is slightly nicer?
>      (completely untested!)
>=20
> 	if (ptp->state =3D=3D ICE_PTP_READY) {
> 		ice_ptp_prepare_for_reset(pf);
> 	} else if (ptp->state !=3D ICE_PTP_RESETTING) {
> 		err =3D -EINVAL;
> 		dev_err(ice_pf_to_dev(pf), "PTP was not initialized\n");
> 		goto err;
> 	}
>=20
> > +
> >  	if (test_bit(ICE_PFR_REQ, pf->state) ||
> >  	    !ice_pf_src_tmr_owned(pf))
> >  		goto pfr;
>=20
> ...
