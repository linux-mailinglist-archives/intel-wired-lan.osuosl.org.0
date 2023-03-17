Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C15456BEF71
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Mar 2023 18:18:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3DE1B60761;
	Fri, 17 Mar 2023 17:18:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3DE1B60761
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679073514;
	bh=khLM2E1iGidaA5Mz9TOOJgsFOv8IKfW5Srl3uTjcOXA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VgcyDNkOhX5wZIBHOAe/rZxxWvflngiOph1J/zlvBpXJNTAO457iB9InEijnjMC4u
	 5mEyFBXvcwU7LQ7clN9BYH+S7sORzJPEmF0Wlttr8c5AGZKY+Kt6rA+D5Z6ZdlR7EG
	 +g1ohNni8y3xQUyHvLLyjhORE2f6egZ9KWVi9ksZElFzfoLVsSYuN4J397u4CjWAgp
	 BbJVNIVvBfdNzrxCVmDqY/8MOSRIlZNAzNdKOumOsqBEcB2xBzWpRztIwcg92wGBXz
	 02HExEXeSUXR6qeILp77ILtxmWLdbjlxWLKJtmD3/WI2JnDpAj4UpbcZ9+XtXbaBWw
	 dHrkdVLkdOW0Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6a65NzD5wl3z; Fri, 17 Mar 2023 17:18:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32E806070A;
	Fri, 17 Mar 2023 17:18:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32E806070A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 67F5F1BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Mar 2023 17:18:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4BA5A61AF8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Mar 2023 17:18:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BA5A61AF8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5F4ofFup7goK for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Mar 2023 17:18:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E9A861AF3
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6E9A861AF3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Mar 2023 17:18:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="400896502"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="400896502"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 10:18:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="769429937"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="769429937"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Mar 2023 10:18:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 17 Mar 2023 10:18:26 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 17 Mar 2023 10:18:25 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 17 Mar 2023 10:18:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AkboDVLlassGkS6X1MjrYou1isS7tnwQUIiJRG+DGcC5660tnTxXIwuoWUAti+HuIzhxorWrA8dKHBa5ImgXccJgtFVFu6aDCLad5PNfix0mH8+SejXp1YzId852TZ5obWtA6/GnsKcLOFhdsLxuJuXtx+TWqcYDBV165new5wve55WVUNUd3D0z/HAQiRMTQguIn6OV1jNSVumGdZoYZVzbKK8lc5AqfpXXxxqSVSk0+4R/dowxGUiuawPJcACLp3KbxqpGK+weOdhBOaNW/SMNrdGzBfiKWPPuxpEO9qkCScB74QnQmrD26P+UoEWxr68m0I2arc3XfG0qgu5HYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CnUavPwfMHTPquG9J5gSNOPRx9FnSXSQdvo59Hy/2AI=;
 b=NYi27T4cfrUpDAyGqs/A9oFaWEm+Qm19Szuyit/RChFr40JQ0f5ogmv+VpLCyPD9BMHsyXF7XteYC7PAwVaFQV1TkGZHfNUZxKO+27mTmLiIXv3pF17OQ6bDjrblFwPUv6pjqVFH+WrvTnXBCm8+XZYFvOYhqqAH9k+FiCkPiJhr4uwe6HPQiTZau2f/BlYKKzzY18A59IeI677UFOI4kUIwk+5JL0NCRsJNUfs628vV8aBCYf03K+unUJCtzcXHj0deigbhjpnkdm5TeMhry9ukdeiJ+lstrdc1Pfb63newbwsaYPNlblml5PFiybi+z2TQ1Aq08zYRS0SJC1zmOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by PH7PR11MB7025.namprd11.prod.outlook.com (2603:10b6:510:208::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.31; Fri, 17 Mar
 2023 17:18:24 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cea8:722d:15ae:a6ed%4]) with mapi id 15.20.6178.035; Fri, 17 Mar 2023
 17:18:24 +0000
Message-ID: <f53c8a8a-1c59-cc98-0243-a135dab0a71b@intel.com>
Date: Fri, 17 Mar 2023 10:18:21 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Michal Wilczynski <michal.wilczynski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230314102514.46636-1-michal.wilczynski@intel.com>
 <20230314102514.46636-6-michal.wilczynski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230314102514.46636-6-michal.wilczynski@intel.com>
X-ClientProxiedBy: SJ0PR13CA0053.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::28) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|PH7PR11MB7025:EE_
X-MS-Office365-Filtering-Correlation-Id: bfa9fd08-17e0-4867-351c-08db270b9d52
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5FmGLGmVNQTvy1warLfO44lqobyg4jILpDlC0v19TvfA/cRbQgIhPUKbX9G7afxII+ZkkafkpVdQF9ola8g192U7m9tN96CVN4TKqGf+w5+vdFGgF0+RwqMfvbv7XJnAIq2XcyAprm1k9+qfV4xSBgZvs2jk/bq1dmdU5sIOq+7+c6MCVEgZmsEpSUeo96zmwqq+MQMGpiPHD3/aY3KUB0p9k3ws9gcXuJMV8Cz21bybQmoM0Y6Bcr9Y4tEaJg5O0KkCMpP5PIH5yqOrwrmw8wlZrMXA2RfHMHpnZu3nWB4aZOk8lHE3YADNz4TQZSWuUn8WHPI2rJyk1j+Cph0yzBH94Xl+rY/ARDRokfn+SjTHXIX3k3ogRIDS8atoWZ08aj5qjIN/dURY6VJe+oo8yRVpOuIijZHh+D7Lc4XGF4kcVtvRImxTO7eeTz19Hh5+NNsA54jzywZfPdl9joHC86iAMWZah0fqkNsp3KUpvBrmN2vB+nTyVto8gzIU+aEjC9QONaDKqEWu/hZS4qNbUTIU9P5JUS0pGxT5LAfj4CfrnjNsSC/V4Xb2ulHhxaxNGmdzse30mDjZpQtA/S1xQ6gMtxG+HnvDiPuf/U4gXiOSgM9JNLBlyxWWM0K5aXsT2aTR6VNL8qVVM7ZkbEMSguq9n5xKOFUpTWqnPIYr3Rm8V+OsfYprINDhyJuch7QlIWnFQZ87nRQIVpC/E7Rnp0W3VdX2XHizolnR5FzIMJ4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(136003)(39860400002)(346002)(376002)(396003)(451199018)(31686004)(82960400001)(2906002)(36756003)(8936002)(41300700001)(5660300002)(31696002)(86362001)(38100700002)(66476007)(66946007)(66556008)(478600001)(6666004)(6486002)(8676002)(26005)(316002)(2616005)(6512007)(6506007)(53546011)(186003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z0E0S1Z4TGgybVl4bW4zbXByM1BBSGY0a2d6M2VUMDhiRnVrdzNXNXU1cC9C?=
 =?utf-8?B?b1FXdTVkT0YzMVlFb0RaYllVUG53YkFKZEkzNU1EYVo0NDc2UDkxMkduN3lY?=
 =?utf-8?B?cTVvRUpWMWd5M2NBai8rYzM1Wjl3UGpCRVZQR0lwbENiMGkraXpHY21LOEIw?=
 =?utf-8?B?VkcramtIclVCUDYrOEs4WTN2RDBpelVPZjVUZXY3RnZyMVlxTmV6bzN2TnJJ?=
 =?utf-8?B?WFdjOFhMa01ZUEZxNGlHSzlHRGhaUDhGT0U0Y3ZzQnU3N3RzaGNRc09XVTln?=
 =?utf-8?B?c0VuSlN4aExGSDNQdzh0blVDN2V0dEcvdDBMQnRhSnBHRkhkTUFDWEx0RUFH?=
 =?utf-8?B?Z0VGTmw1T1oyNGdDSGtYTEZ4cFIxbU1aTXpvTndvRnVnaER1RmxOd1UybW9C?=
 =?utf-8?B?WVQ4UU1ZMmxkMVA2SzBmbWxBZVhpKzUyb1F0Z251Vy9YOSsvVTloM08zNzlT?=
 =?utf-8?B?K203SmJoOTFndm02Wm1uNnd1KzBOaEt3WjllbHIwTmVudEw0ZzBydERmamw1?=
 =?utf-8?B?NVRscXJlbU53Vmd4Q01lYVNFQjQrbm5iTlRpVkxtRDVzLzRaSFd4SFd6VTJh?=
 =?utf-8?B?Yk9SOTdjTDNvSjZVUzVDc2FVYTdHZzNFSXdYU0p3Q2QzRkNWelJvOGRIUUZY?=
 =?utf-8?B?K1lCRGNGdmdiZ0FhTW8yMFV3RkRkY3dPN09YUVI0d2JBY3MvZXNJRExJbFVL?=
 =?utf-8?B?SnMvWExnYlBQOGI2YkcxcHAxcFpjenlaaWlFSTBrbFdoeE1RNm96SVNXWCt3?=
 =?utf-8?B?Zmp0RXk1QnF5SXU0aEc1c3ltdkV1c0dOcWNKUTRIMEhGNnpmL3FRNHpMSU5W?=
 =?utf-8?B?RlRTMThXcGRLZk1sbElLY3JVNmk3NUYxOWhEMU9nSmc1VG5Fajk2S20rbDRX?=
 =?utf-8?B?dTFtKzNtbDNxcVVwVmY4UVN3UnJNcURFQXJNZkRBWklEaSs0MG5ydzFmMFli?=
 =?utf-8?B?WEVWUDk5VENlbGR6SlZ4M283Y0psZWN6bXNIVi9WNlVVTE5kbnR4UjV1WUxV?=
 =?utf-8?B?ZGhnYnhTem82WmV2MjA5YnNCbXhITzE2OWZLeHRab09iUVNrZEhqS2dCTStj?=
 =?utf-8?B?MWExcjQwSzQ1dnhpOXN1QSsyZkZHY3dwdDdKTks1SGJqbmVic0J2RG5PRTRR?=
 =?utf-8?B?L1hZTDk2aDEzWGNiKzJVNG9XRllBNVRXY1AvZjFjZHZLWGdCWTc5aHQva3hq?=
 =?utf-8?B?dkh6VGFGMUduaU1GYVJCZjVkOHkySGJIVFN3a0k0ZlJmMkFCMmtTVXkyQURj?=
 =?utf-8?B?SlNDTmJ5aTRoTzlxYVNBRWtyQTBEN0pDT2ttYjFjTWoyUVVIYkhlK0p3WWVE?=
 =?utf-8?B?MUpxTVgrZU9jbDZxbHRSYXpTR3FPenpFR2RlbS9MSzV2RVRiaEdLOGc0YXYz?=
 =?utf-8?B?VlphUGFYSmRFc1dMVjY0Nm50bFp5ZlJSOUpJMnlhaklEemlXVzFESFhNNXIr?=
 =?utf-8?B?UHNNRUJUaGkvb0tKNVZIVmE5QnMrbzhsY0FmNVp2Mm92ZmNPZVhzdmZaYzVQ?=
 =?utf-8?B?NSsrRkpQTU1XaHJUZ0dtcy9qYk81aWxIZ2x5dS9VL0ZRcnkyZEhhU1dodXM5?=
 =?utf-8?B?cFVSWkZHVnBqVXFvMkRLekN2eUhLdXFCMWFyeGlHT3Y4VE9SS2dxcVlabUxk?=
 =?utf-8?B?ZldQaUxzWHRUNWxSQzM0K0FZekZpTmZzQmsrc3NDR01lOGxtV3lzdVczSWtI?=
 =?utf-8?B?a1YyMHpUQzVpa25rRDZDZ3d6U1grS2Jya0I4aEovdWR5YkFBbUJHN2cwU1pt?=
 =?utf-8?B?YTMrY0pHUnphTitsSCtRMXl4WVQ3SjFIcEpVWm9zUEh3b1BRdWdWQ0x4ekZG?=
 =?utf-8?B?eTVVeE0rOWF6S3paVklzcGo2OXJLOFJTbzhaaW9EYlhSVERMYmhVa2NUVWVZ?=
 =?utf-8?B?Uzd0SXVuUVh5VGtoNDY4OVpEVGZ0MEttWld2WTJlY0Z2dFVCTHFQSndLRG9l?=
 =?utf-8?B?YWFwZ2RrMHBCV1lsaUtGYlc5Sk5IUk5ncS9DWnhGSG5uK3V4QkNxQWpma2Qy?=
 =?utf-8?B?ZTYyWFA4ckNhdEwwVlZQelhCQk5GTmFNaWRlci9SbE5zei9QSG15QUpiOTJC?=
 =?utf-8?B?ekJmS1VzU3pyQUxtbks2UUluRzRWbW9DZituNWZteE4xbEVQYmMxaDJsandZ?=
 =?utf-8?B?RzhOb2pUSFVKOCtkNno3WlhEVDlUUkV6Q0RVSkV0Z2Jzemx3WXFqc2pPZmtO?=
 =?utf-8?B?N0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bfa9fd08-17e0-4867-351c-08db270b9d52
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2023 17:18:24.2466 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BI9CBBJCB3GezhdkA6utOYc9zK7UY/okgExcJ/p2KR2cGEdaPb+gm1ASVPT2FeC1fJ52EbT6o5VTXrDEd77yp/ibfc9akvUM0fidxvfqHRY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7025
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679073507; x=1710609507;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=OAekJ7Vx4BCqN4ibnm/bajHSnEVmOcsu3HDQYjqHdlg=;
 b=iGfCy7rLKyyiLz25q+C6ggianUd1BjdOWWON09wrZy6+C/fM5eH1X7iw
 7fWET5Trm9xlqplLmw+3Sd/8MTPdiRRqNtdlWGOw/YknBzRH/rqJtDQBH
 qnLQ55qXbfKcyZJ9kvMD1e7/e/Ea+m5MKrYwZa1oHZvYvVplqHKpOboWZ
 ORrZeVSI9Rge/yUpzxCcdEPgcYDLhLWpcZAk67me6anKvB5tDlY/QOFQL
 Kdc1rsyxPoCh0GzPieEilQB+uu3Xmbt0aknt1NYBhmeGBA7nrd5rsDcjK
 lvysr22YHYHsVjs4efX4tG/xrnnm+/RJOiwxvKB3m3BGyDXLFVLtEL4Rf
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iGfCy7rL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v10 5/5] ice: Document
 txbalancing parameter
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/14/2023 3:25 AM, Michal Wilczynski wrote:
> New driver specific parameter 'txbalancing' was introduced.
> Describe parameter in the documentation.
> 
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> ---
>   Documentation/networking/devlink/ice.rst | 17 +++++++++++++++++
>   1 file changed, 17 insertions(+)
> 
> diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
> index 10f282c2117c..6ffe230f71a5 100644
> --- a/Documentation/networking/devlink/ice.rst
> +++ b/Documentation/networking/devlink/ice.rst
> @@ -7,6 +7,23 @@ ice devlink support
>   This document describes the devlink features implemented by the ``ice``
>   device driver.
>   
> +Parameters
> +=============
> +
> +.. list-table:: Driver-specific parameters implemented
> +   :widths: 5 5 5 85
> +
> +   * - Name
> +     - Type
> +     - Mode
> +     - Description
> +   * - ``txbalancing``
> +     - Boolean
> +     - permanent
> +     - This parameter gives user flexibility to choose the 5-layer
> +       transmit scheduler topology which helps to smooth out the transmit
> +       performance.

I feel like there should be some explanation (here or in the driver 
documentation) of the difference/trade-off between 9 and 5 layer. Why 
would I ever want 9 layer?

> +
>   Info versions
>   =============
>   
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
