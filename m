Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBNbChQC/mkTlwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 17:32:36 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0683F4F8B88
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 17:32:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58D6B41C50;
	Fri,  8 May 2026 15:32:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OlP4aZPMqGv9; Fri,  8 May 2026 15:32:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A925F41C4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778254350;
	bh=wUNsktQqyhHy51K1u64Lxj36LXg6kzNXmofj4aAeKh8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8ZUkM6dRFo8bo10P+SpwAdHEM12/qFxjdYSTahpj8N+h6inaA25MdHkDu3Tq/ZpFC
	 Z0qM+q7SL+OeVNnhejlDUU1Jl4M+kY8tvv2m1vSwBVHLtVf0I4C0etAc8s/Xo2TXqd
	 FIZVMS75rvXKfl1EHfXEdFHUtP2RYlZOKCSOrXF4/0XagLy588emSNDeSXxLA8Spxr
	 lAfHdY8bVLGobvvj84ftecFhD6DcqlnxVgjZZiid7hjXxReYF1Tbwm4B1UaPTLJq7K
	 IUinHQ/6vpy3ytnFHvq/x/kIjXSd+lmEVNfNok2KDbuduQqTBZU97yMGI1MuPqckFA
	 QIHje/swtvG4g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A925F41C4D;
	Fri,  8 May 2026 15:32:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6C27D358
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:32:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5D94A61676
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:32:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ErpxF_FUxfOo for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 15:32:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C0DEF61675
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C0DEF61675
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C0DEF61675
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 15:32:27 +0000 (UTC)
X-CSE-ConnectionGUID: lzZvHov8Rrq2q7EEgJUHHA==
X-CSE-MsgGUID: kXPL7cmuQ+aHsemEU1VcpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="78245861"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="78245861"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:32:23 -0700
X-CSE-ConnectionGUID: gy/kwJNgQeyROXdJ33h4QA==
X-CSE-MsgGUID: Skv5733CTtu/qaape1zC5w==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 08:32:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 08:32:23 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 08:32:23 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.15) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 08:32:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ENNsgCP9PWpwio+Ms97232faKIBWUIMBfqIR1I8lgKdHU8EtKRrwptUUOolRM8x51BjifqeyXNOVba6jKguRSPSkwrM+Khdadi2yDDeKI8oWaYKjkzjRdkh5mU+3EOPY9U2+PDwF8MotCjxbhd43UH3xvpt7APschJLARtHOwJ41ZRyzPqre9R/AcrX1ru747bJcauNFhy3NLLmL3mK4uXxkBUl07PwbQCO08xxCECtAJS+IE0slFnukYLUQUctESp/zEVR6YgDJ/ajmUDL8TYyW4Y0fIqErFxG//dpsO/lmuM/1K0ffwttYAhDQRMUBthqtp9SmNIXVLlF5ZwzbvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wUNsktQqyhHy51K1u64Lxj36LXg6kzNXmofj4aAeKh8=;
 b=O7foz563c75dS6z809EeeAddxYRRhEs1J5DuTh4Wa/+aReDBWMrgXoHd8Iumv6BpX1vOMmfCKM09YG2HUSX2LstF7hn2bPBNrjO5vA9fGM116G7uWO4S5XiUrwjSPIOnNiFgab6Vc7fUn6MmaxOUXXpxcNXaykz/pwewCLv1sFNiOlpkC62pv9vIcXO7GvB8Rvj8DkSuFZpsbumJNxJ8AIx5qMoQq+jLz1FphN0/2ywkeO9gbCcZv9Djtc0J7xj/8ziE4yYEAkLr8ItxoQIH/eFymlT25NCE1NuqIlfMeweK9srdwS5Lvpp4nOJUm9VE0gbpfEvmhas2ZDmNqXHkbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by CY8PR11MB7010.namprd11.prod.outlook.com (2603:10b6:930:56::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Fri, 8 May
 2026 15:32:19 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%4]) with mapi id 15.20.9891.016; Fri, 8 May 2026
 15:32:19 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Ertman, David M"
 <david.m.ertman@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 1/10] ice: translate FW to SW
 for max num TCs encoding
Thread-Index: AQHcyL6gE5Q86K8tJ0+x+uIt0kPCS7YEbdZw
Date: Fri, 8 May 2026 15:32:18 +0000
Message-ID: <LV1PR11MB87906F4026261CB30A42312C903D2@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
 <20260410074921.1254213-2-aleksandr.loktionov@intel.com>
In-Reply-To: <20260410074921.1254213-2-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|CY8PR11MB7010:EE_
x-ms-office365-filtering-correlation-id: d079ce5f-7c6f-4f23-db95-08dead16fda9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: xyD01tyWEYclO1g0MKr2pE3UOXbd6P7KLXUQHni0zDyyj0wXkHGMP+8oFRrTZMo3GaNpqtQ/hE0bb4kGfpnhJeAdYzekUJRyClYT4VmGocnlGVpUUIHkFza9vNDOQKTljM/V5jgvjP/sDyEFY93X7Q1Myl7Khly5I+cfbTD2iJhANNmaKcaUDHpHRCvaAqTEx9ztMnWXyDgj6qfKrdzFb5EaPRpBGs/HpSiz/ET0F3oxpw7CNRgdlyCZ6ZitI5ogHdkghuIrcvl3MZHsQRDlAxNvyATlAt6qV8UNmZp5n2eYVqR89VhPhH7XE4si4dzyz8G8ld3FEjScNWAXpeXFDUY1n0YUIKK3yiML05ggaH06AnYL16M2SZXGtZ3tL9wSzdkvzpLtg+eIMasgm2LAraK6tP2WV/4+6mY5ZRnhF71IbF4tHy65paE7U0+WqEqpnENq1MXJ0DssOCyndPhktOvNmqxDgDXG1SMuRceaZ5Zs37BQV5luYwYCkw2LwMInkuv2HZLnDnupcEI0ZKNidBXpuXhdOmagpDwI+08HOnhNJDp961fAxw+D0umQlEyvw+J6hPbT0jYk2Q2FC6KFqe2zbWGNkxwJZCgK1qiNsh8A+l/qLfaq/R+n49EGaK8hbr7o6+PP/Z1Rfp03toQdX263AFKVWogF432SdebADCACbCanTtrSiYAesioeYBTXWwUqbPZwCamDl2ulbbqNiUIzAXJ9alkolaTny1hZOGxRf5p4ZO4wMX+C9NwrC7Ub
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IMQSYkP0gOYvBDTDYPLWaEOapZHFxSpMuXy1GZXZW5J58f5VcMqw2H1wnca9?=
 =?us-ascii?Q?nb5scl1xNkWxY3JFjoTUMdsNgiEspAKtvh0TZ5t4x4BkDXoBa7VqGevqznyQ?=
 =?us-ascii?Q?PGB+UhqJUhZwggZcvXIJ6j+Rrk4ycdtlloLWvA9h/y51vTyvAJwweP5ac4P3?=
 =?us-ascii?Q?KM1rnV+sqIacf1UVS5autQxuGqbBG1AAe0T5l8H9ESb4Qw/p0s6NgaMPUt8u?=
 =?us-ascii?Q?dymdhxQ4ow8qkunB4YLFkDYrbDTlsJhsjqA4F1YVfA3AOIE8vFQ2lQdnRZXu?=
 =?us-ascii?Q?JR9GGAOJ2TN40JuDuusTTUdIv68GcQY/imQw+SSQELMOp3+MCEuxASqJOtvo?=
 =?us-ascii?Q?6sGmHZLvQeBJeIvuKjP30LD5HWD/9L4SyMqATCbg27pPHJDm4VrCfNS2ezdS?=
 =?us-ascii?Q?cmQ/nfAWnXB5nZGvWGctYD7Bo/ajdXDqW02FsUssra9aLcHfBtXbnjoGeQlU?=
 =?us-ascii?Q?AOqL6VjFvjQ27B4RHUaWGxHqDLs8BXURmGYJRwUD+khECkwXN8pYfQIpJGzp?=
 =?us-ascii?Q?nsetiIkW3xL36I+z2e6LzgwSSIigrmpCiS/26S7zc+Dil7QeaXEiV9PoDUTe?=
 =?us-ascii?Q?ifw6j20kvKkvmBbkVkAGqTvEojpr04VUh8zmW6cAPcHQv7E4+mFyJl18QFCM?=
 =?us-ascii?Q?lE2mkCGQ2tc+VUdXgagX1V6JlvFZs3Nj7rOzqjt9muFY5irYYOs2qGnKgVUb?=
 =?us-ascii?Q?aUxuwJLSfFSN9dkWpDqoeFS2yt+osjYLdu8OsaXN2DIxOwiayh44FkG1G8Za?=
 =?us-ascii?Q?flzLlN+1b4UdoyZSFFxRqhnRmQ7p7e0kUWBLRlUhNyTyTy5ZxzNDpZ9Bqo4S?=
 =?us-ascii?Q?1dpGz97NKnb8OcPPr8kSG2ccJDKZlNEI+KDGa1QXZ7AJeJugJOV1WNHQb/s1?=
 =?us-ascii?Q?JLq8UQUeUj6yYFhwr4nsfF9HXiwhJ8lJLOFQ5V99eNbOCAi6jgwaY+a4Hqvn?=
 =?us-ascii?Q?MEloMeg9cJW76kEGmdjgk7KTBJdEGhTOWC1LDIiFNLzb/pBsj1E5yF4yzcpE?=
 =?us-ascii?Q?bE3zeyMTDcksE6qycnr5fzibCAkMnqVo4rElJ46ibMTdgnD0uh/8o8DSmHFV?=
 =?us-ascii?Q?buB7j8BlPt1NE65zg2BeCXw0qRLfpojjKIYNYmUaO5RPBkRLx59/GabvLN1h?=
 =?us-ascii?Q?grEJmKzmdffMhP26g49wqrx6IwE9UWyKrUPvrAw5c/e1YbJm5A9eLD1Xz9XJ?=
 =?us-ascii?Q?C6TkTZKOTPIO3/yWx3knjFjvKW2YS6skVDbFrP/8WMdx94mh5KTY6gVnC0Qh?=
 =?us-ascii?Q?5Cq6UHcFMFynW7ZuHuUWGtLZgftBLG0gvlZHsGYzL6G24QzfwYTvgkvMlSOL?=
 =?us-ascii?Q?nSI8xIIdbReRGlZIpZc8IOsD7CjrA6rhjk+K+rvT38p8URVLJf47B2UuhIwf?=
 =?us-ascii?Q?YauKr29gYZ9Pd0nUX4lj+KIZQt4AUapJuwWzMAvheuHYaQ6r8TSw6DmE57si?=
 =?us-ascii?Q?zhguoGKLhym7PhXZzY/hcbOmhM6v7Uz8KagXzUv2pHmfhE9iGCbYIBLU1LjQ?=
 =?us-ascii?Q?0HbBgjz7MH5CvJNvpAxTSKKIuCwVM6DNcWhcc3FmSY1DqK+oXV6L8mCrawcy?=
 =?us-ascii?Q?/UuSXBS0F7MJfETJAs4Oxqz/V7BMfYr1+YvFEgBqx+DevoOGhHDJSPd5IIwh?=
 =?us-ascii?Q?XLlj3vtoNLLet3OC1BoWHbUSe5Ha99HQppIuXesMggYV+ZaSnnE3dgqlnZky?=
 =?us-ascii?Q?1gKalqzPDC5LtdTXwN8lmSebhsAy6AcIklCLKg4DT9S7Hto/8H7NXqLu9CQF?=
 =?us-ascii?Q?wH6/dek8Xg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: SvEF1702EshX2LOCUNUjzFd3/uehM49MT/KpRZNVkLqAa+x7ig6ajxrxxrfJpCfxYzoe1ZjKtYtS9UMwkIHrm57HsHQCX5XdMY41R82xuHjYIzvCj4+XWxGWTCZt36pnqX1Q9gihayaawtxhXAEnwCVY07KC/pcFInD94pcpuSUkNKXby0IeQ5+Ol613c70AsbOXkTxrSZgsHyvqmAtOSgJn3EcLngZPn5A4guqZECMpqLwm6yYJf/uiAxgDd21uzJ4TPGesxZhN4Wg8jD584EywEy+yXUJyg2WVYY8pxxIculo/zg2MkBq9NJnl2pza1cZuEbSeeGfpiXQ/ugjn8A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d079ce5f-7c6f-4f23-db95-08dead16fda9
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2026 15:32:18.9629 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Bd/TWdj/N5zc8d0S8RF3F/dJetZOAWZ+E38p26RlSRqbj5MS4Fdt8WYchc/ZxdvHjLhVJJr2XkYlaUPs4HgMKVXAKlNccFphREYoanEbkAY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7010
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778254348; x=1809790348;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7ASAK4fPt1mVYCV3bXZFEXyb4QV5Jubiwbj9IptKiL8=;
 b=hXHMUQJUsYTfpYvXT30rlWmT2ZPoCzCtOwi3iJOnZ94DErfhm7EGtGvs
 iZc1I5BIe9PHjdMPZtkl1jZ3HgNEAlix24WhJ2RedDOOTtAA7VZf4PraS
 EkmcqdevyV/nBj9GqSpEdviUeJFXiaxLB4dXggfjxD46+VRYFkzgKCIhJ
 iqEsEoujNy9xpW0Vjvf+djq4+OgQ6GruMhmdiT6uFS5QOD/TgPdmj3h5h
 SDb5GbGydSs/cYuQb2jTlXVJ/ujD0KmOFO0Yt7tI+NSo6XNVrs4iOdqMT
 0QjI6LY2Gbgz9xpYB5Z10Znxqz0cKpbPmMtM/1TRCdVOK1zeZRt5rkub3
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hXHMUQJU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/10] ice: translate FW to SW
 for max num TCs encoding
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 0683F4F8B88
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:david.m.ertman@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,LV1PR11MB8790.namprd11.prod.outlook.com:mid]
X-Rspamd-Action: no action

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: Friday, April 10, 2026 12:49 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov,=20
> Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Ertman, David M <david.m.ertman@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 1/10] ice: translate FW to SW =
for max num TCs encoding
>=20
> From: Dave Ertman <david.m.ertman@intel.com>
>=20
> The FW uses a 3-bit field in a TLV to represent the maximum number of Tra=
ffic Classes supported per interface. Since the maximum value is 8, and at =
least one TC must be supported, the encoding uses bit values > of
> 000 to represent 8 TCs.
>=20
> The driver currently does not translate this value and reports 0 max TCs =
to the DCBNL interface instead of 8.
>=20
> Add a translation when interfacing with the FW to use 0x0 as the value fo=
r 8 max TCs.
>=20
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb.c | 2 ++  drivers/net/ethernet/in=
tel/ice/ice_dcb.h | 3 +++
>  2 files changed, 5 insertions(+)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>
