Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A56484F441
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Feb 2024 12:08:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 53BEA4ADED;
	Fri,  9 Feb 2024 11:08:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eCkcUJJPHhmw; Fri,  9 Feb 2024 11:08:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CAAE4EC00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707476900;
	bh=AjsAwxQhGjTpl8zjLeWqsPVXnrgIW3L7a/RTWivBz80=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=t/Z7ytnGCOhQJ4EUHMcQF0kKvWizMT4Hp3atIS/D7re+zszm9gDsqnl8ziERUNWHm
	 WxHgaRDOXwSX1T9ef8k+tSjJWU4Yw+eh97FF7Vmtmek2tqnZCJfubxSXJyu8xr6lZD
	 /dfdIPU/tUS8H96O4dGR2iD2kgWeW8fcYnuGT2JhewIBqDX0SQd60xPsJ45ClApttG
	 RgAHjXko+6iC0SC2yh1yQmA6ofdAU38W2NuvU6Bw/C/CwyM3vX/fQ/V0rMZOdgBR/7
	 SCfgXth9Dpk2uRhqehCq78r6dbmB1SA4k+QaK4uKFG8HORE/lLVpEcDR7yOe/Djbx6
	 ndRKUcdee530g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6CAAE4EC00;
	Fri,  9 Feb 2024 11:08:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 77FF21BF2CD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 11:08:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6310B49E7A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 11:08:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XeV1tfhxrVnQ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Feb 2024 11:08:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CE84C49120
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CE84C49120
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CE84C49120
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 11:08:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="5261710"
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="5261710"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 03:08:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="6557427"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Feb 2024 03:08:15 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 9 Feb 2024 03:08:13 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 9 Feb 2024 03:08:13 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 9 Feb 2024 03:08:13 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 9 Feb 2024 03:08:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gnxqhskVFvtyW96RArubYHVESF+kIYxShvI1Pao3pgY6w6UN/tElqLvWkiW1Yh+X3a642z5AQCMiLYjQDPDGAj62RcOcd0aXQqOi7j8jUa9p0icjnRlhO9BXSF4+PtAqLKzY6250orXjezvyqwSWr38mJRtotaufGwkUodM92QPuEReGOGypcQOpxuqafenQOaRFfOvt5/jAqFdUDfj99KNMdKSz8embhYJHldqB/2MBh6OtI7Htn8GqzbArLzV7LdNLn52H2+epY2I2uN/FLrYbAasa+sGQxKncevyr0cs2tnarw3+rDiAXNsCEgKTWRYSE8sizPadMkmuHBip6Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AjsAwxQhGjTpl8zjLeWqsPVXnrgIW3L7a/RTWivBz80=;
 b=SRSxDHDUoW5MAE/F5tRzMGaE5OcsGMbT7FQPmXYdTtPLNYXUhPPi7KeqX6j5xNvKf4latMHd9pBj30kMntdz+VUmmI6h5yAcPM7Xo0Gva/cP3hmUGD6XDNgd7IRur2uY8nRkFc6+jrm1/eZtGS1j1/FGJxdl9ofwAoCBxIXyrW3r5COPcwUDY48yMIx3rOt6JKhkuD8vESO+EWttVKIo/59cBcejcXQLi49Td0qddUw8NFW65ND9tVkQO1vg8w3RFl7xaDZ0ZyvhpQH+uaLU1SRTGKmXroZyh6fpqDcLENdQU8pVwfWfkv490fgcmqDdhcMwN1VpVNqeT2EfNCZkCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by LV8PR11MB8535.namprd11.prod.outlook.com (2603:10b6:408:1ed::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.38; Fri, 9 Feb
 2024 11:08:10 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda%3]) with mapi id 15.20.7249.041; Fri, 9 Feb 2024
 11:08:09 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: Add check for lport
 extraction to LAG init
Thread-Index: AQHaSxw9ZVCqroRJREilX9FbCWcHjbEB+e5w
Date: Fri, 9 Feb 2024 11:08:09 +0000
Message-ID: <CYYPR11MB8429B8B327BD807EE4761671BD4B2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240119211517.127142-1-david.m.ertman@intel.com>
In-Reply-To: <20240119211517.127142-1-david.m.ertman@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|LV8PR11MB8535:EE_
x-ms-office365-filtering-correlation-id: fe02edca-0e24-45ff-3cfe-08dc295f6650
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: C8fVpmUi8pF9So8WuHJqwG0K/+WV0MhvBwBCUGv4Bcq6kHAdv1m/9gmwZ0ipYr421IKmT0CkBLYvasS6xyCzfKUUzWfB7vD3FEPjm4VXIREwaCLIKlEWkAvSFXuRquBrwx50zf0BrsbN/FWOHwSpRZhYrRszFyhjj/lDvp5j0GAB8XyPQUFsJ3QU0uXUvQ9GSDmKr5tI2qqEUXXBdkrZ3Tbkyi241NNF00QHczjl6T/xzH5DG6A2557yEo/tlbdRwfw1/9vew6bZk9RlPQqeIAOt133fh/F31b50SyCQfIB/ZZhiCStlvC/x54JpWvpXjnHBeNKJIK8w4W9lFc/NkgcwzY8orfyUidB/9hdQ6OTUSDXrYSDK9T25VjHPLeG3KTdumv8H8AlLkek7tMM89O/iSrZEkx0Gqdfrp7PsN9saHi9b1RP3NsqFQyDKQM2NujkCcv/1obaCdE1GzEf3GKVEMN2z41TVtSEr0FJ4ZJAYyrPlm5i478s31KWB6Ve3dOxjpzXznDfMWOoWqTtIfPPvV/fqZiRJLDAlixCNqO1bbJeiwKwgWEwsf3ptOyX95nP+OVK7PYWYeB2Zam7cZx4hTv4jf8/mF7HXAuR6b2HC/gslzt7nKDh9EXDXoq9b
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(376002)(396003)(39860400002)(366004)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(52536014)(2906002)(55016003)(5660300002)(41300700001)(122000001)(83380400001)(38100700002)(26005)(82960400001)(86362001)(107886003)(66446008)(64756008)(66476007)(110136005)(53546011)(33656002)(9686003)(71200400001)(6506007)(478600001)(76116006)(7696005)(66946007)(66556008)(54906003)(8676002)(4326008)(8936002)(38070700009)(316002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fLnjgWtM2WPDklVNqye1syzkZEi965tvlzXqfgI+DEVqKxwJReXg2fkQxKXN?=
 =?us-ascii?Q?yau9aswWBM/IVFaF/ILHB/wJO4MxsdubHbpt4rz5PDLjq5rXZ/p3DbU87EmX?=
 =?us-ascii?Q?234jhzSUH5dToQ/b5V6B4zya0yHCI5b4J/gE29il9Uwd7tc4cBTZgTiF8Ykh?=
 =?us-ascii?Q?0qOxY2PTF6cj/BzP9Oi0TusLijQbJ93sNsx32A5a7IsdE1HcMoQHo2mdGTMs?=
 =?us-ascii?Q?vA04GEw7SeKvfh0I87mbf/7rryfdSa2M5FX2Z+1QKs1bXjDe1BglClJsqeQN?=
 =?us-ascii?Q?0swPrSu8iLInVs3iUT+pbiqnh7pZijd08A13C7/2YU7zRaznO5+bDuAr/kxm?=
 =?us-ascii?Q?2/q6QCqq4yEaaCAW8h5W0HsWXO+TSNJVxxiizrCOOASNWmlsGu+for+xWgPz?=
 =?us-ascii?Q?sC+7fpe3tPb2nFurU/OKMVxkbJ9/RbBc84rYoupeLgD0cPiEClcc8EfZ/DmT?=
 =?us-ascii?Q?tunEKJJFNagXbhOZz4xH3DqefU4EJWpgLM372otYuonUROc1Pap3Fwd5mbyI?=
 =?us-ascii?Q?2H/xbpgSMi2UmGc+XeNGRh+yxMsY6+tsQiermGR7YfNkWIWFOQdGmVhUwPxy?=
 =?us-ascii?Q?ePVlPuTRzeg/Qcb+M/MlDOv8xQfjCFBjLoc8NqRykrOMvXDc1lIKZ4LF1Sqk?=
 =?us-ascii?Q?CVSv+2WcaBvOHzzGzEIY3ml2eeNNAx7YtKL7FoaKKWmhDZvQ/bRcIlMnbZ6N?=
 =?us-ascii?Q?ai4EEYMiQKnbShtHTQkitgvsD76MiVFNsPyK89lNWbG3CPM2RpD5JjpESykd?=
 =?us-ascii?Q?VcjZnoclPlaqWDNrzZBk8VEGdbDMsQL2mVQHUDLAnIY/VmdprZjnuuYnjffj?=
 =?us-ascii?Q?UJTjISDg//H1mUAxITW2ixDQvSh9K+bBrgQ6nd9I/uWxmW7n03BN+D62GOiP?=
 =?us-ascii?Q?HyK5OjV5RmS6NI0dIKKCPZzRANwreB0RwN9PsbsuMGy8Bf2Nx9E8zTT+DisD?=
 =?us-ascii?Q?BoaYu+DsIfZuCgEzIfxlcrQ7/RgVxETHEOPlx95hQA9C2+hLOntUFb/S6YKQ?=
 =?us-ascii?Q?WAInKAekCPkMcrvH0+EB8IIPRV8YiySgEuCm2LyibTXpEdW614m+ohJgK4jy?=
 =?us-ascii?Q?CXVxMV4EyK+hcjV0M9m1DoNkq5HVLHzhWXv2kJPYKLWny0tiGyjOTTFXbQ88?=
 =?us-ascii?Q?0/uTIo47csfSYYwhyPDu+mPgXRBuwyeSEBSNKUX0+AhCPASvE2uRrwoTslhL?=
 =?us-ascii?Q?GPpgf1OJ62+GcgnSj/Xq+aMIbrgNrSYHKC2VukLP91zLqHRWfgCoiXrY7UM8?=
 =?us-ascii?Q?D1ikh+e9bu2ae7fJ6NcWpvhCdyjkJCzLEDfCB3sRZVJzQji5Yg9e1SYMAMGU?=
 =?us-ascii?Q?sX2MsbGdZ00FKvm6uik8zdx8+hhhPhbJ+giBY9DTJQVge7tRNPRB6gxBdiQQ?=
 =?us-ascii?Q?yNslElCUBCj/LceUgIeURmQZJiDwoTK0u8M+NDhaj0J4oGj8BiiQtA+sRzSm?=
 =?us-ascii?Q?9YBWzivMLwSEhQ6h3Hw7xYvC+pbfuKLBcPc0wUBsyOs8naLndacH/Ho0nuwb?=
 =?us-ascii?Q?JvZwaAexafTgbtwMii5KnJsvx52o/7jNGGsC/wQpgKT1p/bgQbPOljMua3e2?=
 =?us-ascii?Q?9VibGkxojzCD0h6KawjdUpMzJs64si8YKqSx0umXgSask0WwH/lnmtRqWoma?=
 =?us-ascii?Q?KQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe02edca-0e24-45ff-3cfe-08dc295f6650
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Feb 2024 11:08:09.4579 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hCNTO/vnX9smF97iUVM/eaKPDte4dkI/rc8YeCzK6BH7QSOVW4MN+axLxlkmXVVzQ1nHatfF5vqINU3ZAM/gtDq0NEjbgvo26BSxTOMO+MrjaEjobcZ9bLoN1rlKnvgH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8535
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707476896; x=1739012896;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=T1fLKO3Rs6IB+VQoK7PPFVj/Hw7Ucx/2CGXGJ6UOKis=;
 b=YAYsiRNB2jFCYuH5Wdhh33ZBMSDlSsDtrZI1uy89M9qAjhX23NPIRE1a
 55kxpcEhHp+DEGUSEGgN6XX3NQjmDlj0orzb3/VkxiUbxi31bRGuD+Lsk
 UJaJcl0XyfOMRAH+YK2lpDjx/1PKE3+yU1FiNizDpyQaKx4culzZM5Dpf
 c5abnnQvDgjY+UX/GqX8SPBR61jpdejEuwFq771FaB63uEmG4MBEeCKM+
 x+tuVeEqky4m+9RBdonKIDhfTul1lOH/yrb4Fhc3yJapFecgrr6yxk77S
 K0c0mb0x0CovCZqgvKXsPeYWuCuJGB7h8c7kxioKm9erepJvY5XKmoLHM
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YAYsiRNB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Add check for lport
 extraction to LAG init
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of D=
ave Ertman
> Sent: Saturday, January 20, 2024 2:45 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel=
.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Add check for lport extra=
ction to LAG init
>
> To fully support initializing the LAG support code, a DDP package that
> extracts the logical port from the metadata is required.  If such a
> package is not present, there could be difficulties in supporting some
> bond types.
>
> Add a check into the initialization flow that will bypass the new paths
> if any of the support pieces are missing.
>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Fixes: df006dd4b1dc ("ice: Add initial support framework for LAG")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c | 25 ++++++++++++++++++++++--
>  drivers/net/ethernet/intel/ice/ice_lag.h |  3 +++
>  2 files changed, 26 insertions(+), 2 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

