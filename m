Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 968DC88FD68
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 11:50:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 89DEE414CD;
	Thu, 28 Mar 2024 10:50:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cuPiD4ZgLJ6C; Thu, 28 Mar 2024 10:50:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 80DF741497
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711623012;
	bh=Di6dZsrgcdg8MhWDiim568EDXkoeWvOANLDQ/KDQSfU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RREgEYC321wBQlQK7ng7mKk5y0Hab62lkwvFMYjK2FKX/DFruMt8LjEAq8rPLEGUp
	 iNvF0elmtpPbkVzZh3nlea178YQaxESSKVX0i96AMHcR96MSjOpLaGU/M0Vmy6qJ5n
	 IDfwnI1EmRh5WhHciyvQkDrSKd9Ug7vroXF6gY5DdLDLapfLISX0Skfg0+NNU1kE8h
	 U3osMxvAx18LAAlRKhgSDeTrggTJDWluzPgFQZAOlxaWWSH3jix89gAqU5BUKuiDDh
	 hk5bC8UfbnbrwTT4nDY5UYuSme8kIlMvccB4/GOOtR/KS/lLAqR9MMum5dqot/4gDT
	 RF/Zd1jVTGd4w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80DF741497;
	Thu, 28 Mar 2024 10:50:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CD1BE1BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 10:50:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B824F4149D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 10:50:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zs3u0ACQcpTN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 10:50:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 92B3041497
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 92B3041497
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 92B3041497
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 10:50:07 +0000 (UTC)
X-CSE-ConnectionGUID: 63DKLJdsRmyZA0G+MXvHOA==
X-CSE-MsgGUID: TY/yewluR5ezygmtXI+kQg==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="17318160"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="17318160"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 03:50:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="21270353"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 03:50:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 03:50:06 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 03:50:05 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 03:50:05 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 03:50:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ftc82JCJMty/tmke+6QI8pImUpdElvFO+uoHFNphA+eyzyedDsEmrBe1scGPQsZysgJGvLTzYRmvSX5o82kWWIMWlrTIi02dZnaBqhvL6Q1/ul332cTDu9bZI5y3MhzXyW7vdZAOZNP6aAlGa2JxviE9vohwD2EzjJ1o5c6LFwym3MZg8cd9jldr4mBS7vj9GAHcngjeFAkLKLkI5tMzmDf0FibNx0FLN1WoSKHek/6E2FHiVKMsuTHAigbooT3VQRocqUyx5fJaV70UcuaulVbrr9GJk2iLAkOy+sfOMPYwDl/5ouyWJxwB4T13NGE+SMKoJXXIxlaDPI5im9DGcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Di6dZsrgcdg8MhWDiim568EDXkoeWvOANLDQ/KDQSfU=;
 b=QHo3YENIXPfSL5T+nP1q2VeOlATbw0HtcKGTDJPTPfwdbepaSpZFG935Rrp8Zd/TRooDZY4MOMj4qOY/PDAeqlcItxTVZqDXmB4wViEnMAutqJ1hSs8X+wx1PD2L6wjq/x7OzACzAkTXDsEelALyWyy5u+rp1qrMlYaThKc+/Ic/Vwc4UFTBmURAoXG07JRaQwwdC2yWhKa+acBBee20SLfvxzus1oLzYpn9573ztlVhSEGG/x021FPzrX59iNtLgXx861MJGs3spouF3NjZm3VHQDuij1gLUVz/MTX6E3HGSLEwBQDaV5UPLVfA0scgQSvymRlhx/2RkdfBXnaTmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by IA1PR11MB6100.namprd11.prod.outlook.com (2603:10b6:208:3d4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Thu, 28 Mar
 2024 10:50:03 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 10:50:03 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [iwl-next v1 2/3] ice: move devlink port code
 to a separate file
Thread-Index: AQHafvuwAVYY60TEE0y/s7XYablk5LFM/QTg
Date: Thu, 28 Mar 2024 10:50:03 +0000
Message-ID: <CYYPR11MB84294A52675237217803A8F5BD3B2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240325213433.829161-1-michal.swiatkowski@linux.intel.com>
 <20240325213433.829161-3-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20240325213433.829161-3-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|IA1PR11MB6100:EE_
x-ms-office365-filtering-correlation-id: b9d5a523-0373-4077-669e-08dc4f14d2fd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZHEngZ9K3KSGeQ0FtNf+KTU7p74BqiUsOtLEn/VfZCvGBnFtUYZv/FmUlH6Fvjq3TNz1pvmL+MkgRJn7Q8syRoVIyRxRAN1KTOOOx/vxvAxX9ntyHei8sJclRhQJIw6lZjaRbKZsRXTp1lUIwBHc/6jXvQwZDWQ1GJQVUo8Mh61oMmvY+RT2L3enePB/1Zx9lTEVFGKh+XTuDo9Yc23v9zsBtC/cwprlt8J2NQkqiWDdsS7Nfe/VzmpnBBE7tBnQUyZKkptDaldLJ4NLa8F4d/erlTo6MdC79zPJlL7H7KARm/UvlMdizu78Ut8IpmNxVfHL2whMMxpjFP5U1R+ZUxWFyJ1CskgqOIgtvKnL6UD8XhJNn3WXuqjfk6bX3BZVhwK4yqOj3CRCUFA4pvHk4TsZ0T4snf7IAaoLk5At2QmcTNKWJmeX7dmKB7ePf+OxHvTPS6dWN3aPZ0D2AqYE9KesGgioZ9J1huP89IjoimngbA5hFz3/m/cDmOABYtpgePFDWQqxAvSLcT9pZRokDwcYqoxjWBGnq/o3CjPIxUgz84NNV5k7hKJmzAmk3rRuucOkdFZrNnlkDdqDADW75MgPw0FWacKLd40BU+pBfaapvkk3lBbS1nZLc/lsK3F4nB0v6HGs2UIFA9mOsW7DXXgyTsIankgvO3yJLYtkwUasIZ3D+OB9K4n2p8cYxoVCrwq4aECw0kiyHrr6FFngYw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oUOvEGi+NpXk6KevmLX3F3ps1lA60St46X+GYoeYEjPEtxc/LrV2bz/jyQ+g?=
 =?us-ascii?Q?PI7Y+/+AEb/6RVh3a31Y6oHd0VnYEaeX2CQB0dVwiy0RJ9n8cFh06D+/9O1q?=
 =?us-ascii?Q?pocAYDDUyt6pTV5/9Jfr7b//yXqkCSw8S0qyiApBHy6AJZLofkAUY2R+We/y?=
 =?us-ascii?Q?GcxVkS8R99V22X7VR58MZFDziSbce21iEpktJNyc8x4LMhrwyQC2IYIxLD9k?=
 =?us-ascii?Q?GlG0BTKJORe0esLdF+Z46o/cykDAB3xyKWE1zXVbf3hfSRSlLGjeArIQxody?=
 =?us-ascii?Q?mX3n4Rz3CxXem5QH3/vaY9VQg4Y56IcK2gIVl6UaA9M+1OoFFD9lEE+O0ify?=
 =?us-ascii?Q?jovz0qFbZMEwqq23/dQF9EilReiIofK0X8IPyERlfdQamu4oukY9qkSTRtny?=
 =?us-ascii?Q?QT0jFal2gJfGvDmaSLhm7MSLSuGhWpk2omRYvg9HxWCPk1sYs0qjNsNSlo1u?=
 =?us-ascii?Q?PzhjPFkC3JsMihRF1jRkH+TrDOHcuXIGfzwcxa0LA4Et4rzV5UPDAwlZfB1Y?=
 =?us-ascii?Q?9JYk0cViP+gYlGUaUlgcLC73l4k8d6RPyiAU0cqqHG70QN0IyZ+5IvvDV1Sk?=
 =?us-ascii?Q?p06K0V05MQ3JAX5QyU7RwqfLJtj8g8rmWw8wrBZHxjXL/MQN0YPNpVC8fMWv?=
 =?us-ascii?Q?IlyryD+KaeEu2F7XEEv9yTvXRX0G3aWwdFAoVBhLJ2AIQz4yEf77WGYKdAL8?=
 =?us-ascii?Q?tJaMNKxmgoBG2nO9iXKw8AwuoauLcTiuyeq/8AnG67QzrKR2ebjsul+OSrUr?=
 =?us-ascii?Q?0Ibe4uPjPauLRsMNSY4uElWI/yHRpdmZIfg01htUs+7Jr09AC7hl985VQWnE?=
 =?us-ascii?Q?G29l1JRlf2n9cmbhiP01qStkLECGDOnr40wrw+n3/l3RyDPurTaFZT9Hh3Ld?=
 =?us-ascii?Q?V+r1zYyujC9cYWPqI/i4/NzRd/StS8mwlDQlk24AaiD8M9C+emPKXce9OydG?=
 =?us-ascii?Q?YzbQne21lA1cz3F6w15gm4SPC7Y7iVeMsDRPYDsSxr6AMxOVZ2dgboAM5WDy?=
 =?us-ascii?Q?A8em8Qgknuk8/ASVFfaKWHvIuleMmbI3lEG0dMTxlI5zgJ/wFStO9qlSpr7a?=
 =?us-ascii?Q?b+Qfm2Q1oanUr/GTuiQbhtELBSVSrkXspkhBnmJc2DXXcboLokHmBZFghdIQ?=
 =?us-ascii?Q?pmrVhuJVih8hY8Ib1fXzAbleJ/GIQppqPlpR7VuXvZr54vxXMli88EHJGPJY?=
 =?us-ascii?Q?HbLNd0HQmzGn9czS+nQxW1TLvaBzbo7mFjZGeejFGpweyY4rwsNZQWMtSv+S?=
 =?us-ascii?Q?Dx9KKcvoaLbLPiSREhSJ4RKBYUFcYWit5vfRgd4Omg/n+yWfF58lWTkEWO0O?=
 =?us-ascii?Q?OV8s3BvBX+1hKgOyl2cdYoZnu6uTxQQUSIx5+pb6P1HN7S//xQ/2TA0PD4kE?=
 =?us-ascii?Q?pjo9KCR1P9AF4AxwtyWmNWeiKy9qYsAbQRB3KUeTKeAo9F0h+2gKFVF+/dJL?=
 =?us-ascii?Q?z5iQeJpXNCpR0e7Gh879PRcH0cVZYQ7qFxYqBVp+yuFKra+vb7o3jTqBvOZM?=
 =?us-ascii?Q?gyefMi3ZZEiem+nvvFBzNkRbDz66vIODRavbc1IwJ3wd7svSFxyfeA0gRWtW?=
 =?us-ascii?Q?W5PgO+NNaJTGQ8sIvJKyUsxiJ0bTkw5PPF5KCwc3ZRwS6K3mfUaPyMnCVsv+?=
 =?us-ascii?Q?zw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9d5a523-0373-4077-669e-08dc4f14d2fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 10:50:03.7044 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZwKjfY6BHwRpCyPkFaK86jiOKSqUz7PouNIzizcYa+r43QqaVc17bTD++SH9gDBd7G50vlOhg311F03ZQuHrG1W88tYIkdlU84hbInyFLCF/GoMkyN0B/ZfxVjge8pd6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6100
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711623008; x=1743159008;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=avzQklRiS21W0oRO6RuxROn4puOzN3B0K5YaM8a85ic=;
 b=FLbE9DrgQg0CENDFL9TJm6AC2rwkORhIUxRuBGrS/15d70aEBZQizY0N
 vMF5xVEAlcVjSfUCukCl08bQRWp4ycZTv40h0zSxzwIKMpkNURuMtWFlj
 qULDZndJgTw9xaz9oWoLbg8ah+ZbJUg6K88sfOqz+J/ijWoyu0rgINOyH
 rWVVwli5J3yNDuYO6anVdZjLrDjHwOND3S2mRLF0hn8mO7kurLtgxUcI/
 lZ73Wf4wtrogAvWRq/VmgtoxwFLC2zI8wrYjn51IFE9B/NP7QnpYmO4+M
 A6+vdXqO7xTSPS4ieb2SksYN7XhfcdYQ2hGcra8clMifLQovAJKfyay1y
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FLbE9Drg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v1 2/3] ice: move devlink port code
 to a separate file
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
Cc: Piotr Raczynski <piotr.raczynski@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Drewek,
 Wojciech" <wojciech.drewek@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ichal Swiatkowski
> Sent: Tuesday, March 26, 2024 3:05 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; netdev@vger.kernel.org;=
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Piotr Raczynski <=
piotr.raczynski@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.c=
om>
> Subject: [Intel-wired-lan] [iwl-next v1 2/3] ice: move devlink port code =
to a separate file
>
> From: Piotr Raczynski <piotr.raczynski@intel.com>
>
> Keep devlink related code in a separate file. More devlink port code and =
handlers will be added here for other port operations.
>
> Remove no longer needed include of our devlink.h in ice_lib.c.
>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |   1 +
>  .../net/ethernet/intel/ice/devlink/devlink.c  | 423 -----------------  .=
../ethernet/intel/ice/devlink/devlink_port.c | 430 ++++++++++++++++++  .../=
ethernet/intel/ice/devlink/devlink_port.h |  12 +
>  drivers/net/ethernet/intel/ice/ice_lib.c      |   1 -
>  drivers/net/ethernet/intel/ice/ice_main.c     |   1 +
>  drivers/net/ethernet/intel/ice/ice_repr.c     |   1 +
>  7 files changed, 445 insertions(+), 424 deletions(-)  create mode 100644=
 drivers/net/ethernet/intel/ice/devlink/devlink_port.c
>  create mode 100644 drivers/net/ethernet/intel/ice/devlink/devlink_port.h
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

