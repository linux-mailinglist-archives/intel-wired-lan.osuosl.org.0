Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74420873944
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Mar 2024 15:34:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DB1564181B;
	Wed,  6 Mar 2024 14:34:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 81OsRr0dK7ij; Wed,  6 Mar 2024 14:34:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 070054016D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709735680;
	bh=iFYmwc5SZfVFQVblVS3tTCokZeeLAwRX9f/CFElC2D8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C8tzEYFJmYUop98PzPkKnn2dtUel52wpI8KV5/dYEyXTHoOCjsuN+MWfxhsBv+NXY
	 H/W+JTn2dPoPe4D3+qBXiL1pS3GDidUfD3WtZfPwyNfC21yqW8SS4Xgrh8tdniVuCH
	 r7UcJKBnye0obh+4TSU91ySgWiRPmBE8Dj9wBDRy7ZXTVa5xJ0AZ4QcOclsc+GMxFB
	 HFr5ys+mLDuI8PXN1nPVvfF8z5TBlCHLTHhFbl1HOWKjJ3UqD1dcZ4o0VhjBBifMeo
	 xTLb4+IRxlH+Uobbs2lEaIjla5vbYgTUhIhjWCam2kq5bBr3d9SB7F5MSwQC9j8vWu
	 LyKfvS85XHVGA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 070054016D;
	Wed,  6 Mar 2024 14:34:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BB5421BF5A3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 14:34:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A6CE941700
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 14:34:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 66DDOmi10-3J for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 14:34:37 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 06 Mar 2024 14:34:36 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D71E94016D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D71E94016D
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D71E94016D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 14:34:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="4211667"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; 
   d="scan'208";a="4211667"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 06:27:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="14336835"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2024 06:27:28 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 06:27:28 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Mar 2024 06:27:28 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Mar 2024 06:27:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NlWlb9b6zoMpGFk/ME5wYoJZLKBo1I9jpALO7In81bu6JDMM1pu0CR5oai0QMxcAWegRMJEFw9T94bL+9ZcU/lTDeqr8gKaEn7lW4VJwNs51djNjtL39ACIVaMK1LI0uPv4R3b6fqGg7ZQ0sYEq7uT41aXD2yMWF7PF5Ly9hFPHMvDLSpDOP/Ylo0lgmE321q+ijFxdT81VsiiKAb26+8FJpkXQzSR0wAS4bAcAXyryLYZvr+3lVbVuT7iDBJnH/8Dql0wk6Ijgnqkvwksn7UDHP7774U3ATaHjT9bMB65RyduQcOacS0C3IisNWB0u8YGkMvewNlCa/wL1yZc0C/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iFYmwc5SZfVFQVblVS3tTCokZeeLAwRX9f/CFElC2D8=;
 b=l1a6OAaCcfwHYUTZhLONSndMWgMLiNl3Qq+UHCap/6B2MG+CCVR6lYKm0JIC/0ZTmM8AfRSl/fP6YllNziY+ZuUuBTAqAepTmltEjwTPFYfq8KLj5BIrQHGLR4hTWNfNwiR0MYt7e39UfCpiVMKnV4aq4QWvL83IwLE0eauh3ARIjFGkNXZRGbInFbb4UPXTgYkCaHcgJ9x8fR2FiMSf5CJNuvnrG/nUh6EyCUZ3XbUGgZUwm6ne/9NDf2edFfFJpGElrW6YYOqcZHSFkiJEQMbgYATNY+IQdTFHsfZ6eWSuqeXvKyKCz2IFQtJkXtntqsU18FGgwX5E4hvCDlz9BA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by CY8PR11MB7729.namprd11.prod.outlook.com (2603:10b6:930:70::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.24; Wed, 6 Mar
 2024 14:27:26 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::25f4:e16e:df0f:3a7f]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::25f4:e16e:df0f:3a7f%5]) with mapi id 15.20.7362.019; Wed, 6 Mar 2024
 14:27:26 +0000
Date: Sat, 2 Mar 2024 07:47:56 +0100
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZeLLnEA1pv1ejP8e@lzaremba-mobl.ger.corp.intel.com>
References: <20240228155957.408036-1-larysa.zaremba@intel.com>
 <20240228084745.2c0fef0e@kernel.org> <ZeBMRXUjVSwUHxU-@nanopsycho>
 <20240229072813.5d7614c3@kernel.org>
 <ZeDb8Dr8mBvov9fc@lzaremba-mobl.ger.corp.intel.com>
 <20240301090836.185e3b79@kernel.org>
 <ZeJ3u2x3Ihs8WQJn@lzaremba-mobl.ger.corp.intel.com>
 <20240305115450.577c161e@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240305115450.577c161e@kernel.org>
X-ClientProxiedBy: FR0P281CA0248.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:af::7) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|CY8PR11MB7729:EE_
X-MS-Office365-Filtering-Correlation-Id: 755efec7-ec12-4bdd-17e4-08dc3de98bd6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GOnG29F3W12w6rzNo6Y9B4ApSWDaqSXebJdRycxZHV78O580q9wUSKfJX65fg/nPtOHpm4O4qDa795TBQtnZPC3UmBWph6M0g8eY79GPBe6kZHEnFNfRPTY1vZocXjDvqrIvdaE4SP+zHozTw8d0u+7Z4m4Vo0CAA8IBNtwRqs5wHlSiDGsD9xXwN0A46BnhDALHv3zCDauS/mZMFROjaj6NUVxtytBif1sFRGZkL3WqnEd6Slwn/vzRFyFtgEipMFufDJCq2vAJy0DuFSMlGQMrqRPe889x2CBubIZPzfVRUYVOoFKzdKi7cYYHEp4k+nd7PvYSfYs0Vrg18t2ZFO25fKFg6oGg4OXdz0ZexetfGO0mKd283HxeyVisc+MvcsvmHREQ/A+45WOEnjtLmB87HaRlXnDieunx78LJkTN0GYPJGskTkiQke63b7wSG+TpS50WXluAZYz3Bg+TUHH/9gPOFVKg2Y50TSqjuGybFrUp0ufPR08MkVWM03gWYdEMQSCePs3ssPwmkOocedjf2R7cUadMiSxdI/+ZUOrw2dalE5TscCxc2IVsqZ6IXtFP8Pa7U3/uB8dgNP3CV8xDBwm0gADAwyGdV5a0AH8nYTeOiGD/TC4Q98DIe9qcNxrOjJY56fOAFYKRyuq9ItIhBCUryEykYwjMYmo9RCmY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bzZZE3xBO/AUFQnA2gJovqAbFrEVIQaKzLq7QkAkMoiu/BhlOFfmMinjW4Jv?=
 =?us-ascii?Q?Uj9kehwHyALDfqQ5UUqn0RrRFi0k9J/nJ4+cZeEEEOAVCmxVKM9cMjZyYKsm?=
 =?us-ascii?Q?q0UzweM7hqVlHY0WomvQx+yLQbVF8+MNE3p+FCiDHi4G//KhIob+Kj8AYbFm?=
 =?us-ascii?Q?0yqX8wzieJnJTvLeX+KYmxrDn1kbaRd8iPOZEjnT07BOVJ61YsIXXNU6FNu+?=
 =?us-ascii?Q?3Y0hWH8eVQ2EW2ktxTTpwTurtYi534ke+kW9jjXCC2pGgYdvXTsSe2rRA1/u?=
 =?us-ascii?Q?zf+aT/SOeMKL22mm2Hp53C8B0wibD6kCfXYwcxC+R+w507auYVQxQlparCOL?=
 =?us-ascii?Q?5TD0H5X985a7xPhLvXVR3uuLRmO2xCzkBH2SsURo1jotiK/Q+lpwJTm+RARE?=
 =?us-ascii?Q?/457pAoiSkHlRxpXiyQqae6fcPS5vByNCNTAEcWW0V8MoALCcyTKcHF2syB5?=
 =?us-ascii?Q?tkeF+g9mihaRn9VTGnE4I6PPwaIqkjqQkoKfGwiVvavaXRUGXUXjqX6EjNo8?=
 =?us-ascii?Q?mA7ivqvaW/emLO52Nl/VUE/6lbXlzB9zgBGCKoW7flKYJN03qCCLfRTDFofd?=
 =?us-ascii?Q?SHCuOXHFUscu5fy7jUC3kr3PH7BSrB/nlm7z+FwmWoQXuzGx69IeAxSUrv2j?=
 =?us-ascii?Q?3I0isH9Up1sDoUuZtBtBdQxTQB5fUy1g7M6ukC9QcgoML+ExrzIZ4LNcjOSx?=
 =?us-ascii?Q?cvyO4gKPycJkZuXstoxc/UnFdOlMerPBo6w+v42SqmXsa8hIK52kh8LZ+mhe?=
 =?us-ascii?Q?PM4DqgjRMJHpNcZd01tiwHFtGkuptZ9hrjyIS/bpmWYG5LWZb603knh2wC0D?=
 =?us-ascii?Q?NddoS67fz8zI0IYKBd4y81yl9EHYEcziLX9axscaeVkWBHMxyRvVfoWvxzq1?=
 =?us-ascii?Q?EarRJ6swqJW9aOE0r7LHQ60fYoffiHmuFBHjOQ92hxpz+agOe5DsbaRJokkU?=
 =?us-ascii?Q?+CHst3tvZ+OsAi7XqHqqqE5nuYVBNxmhqMzhDhuTb15yIlBupGgSWsT4Pn6a?=
 =?us-ascii?Q?dK/tqO9GpaLY71AdWXpxQqjMdG8axovSmbCPLyxcur+MlFhAN/aoTwlmYLlX?=
 =?us-ascii?Q?Hbk/RecEmSj2P5AXnymL97jqu9slARlyS03zvepM0ReifZkDdt0QkZ+p4CON?=
 =?us-ascii?Q?k6ST0NU0VKmkufbp48Hg/ZKmwnLCv72X82IPC9rtg9Tv6J1nCW7nY6bQKrXg?=
 =?us-ascii?Q?UD9XazGExgM6+vH1Ks84oeuE14kaUJvFaga5krgZav3Sq/czzsFlF/hl/6li?=
 =?us-ascii?Q?aetaOCeb+gWnnYPm6bbjbhoFXlYMnK8kTX52UcShbbAEILV1rXMZfeIg8lRg?=
 =?us-ascii?Q?HphWJv+G2q5YD9mqVi+JHUxNoeJoBypj9FpwyPZcLTa5SfzawYuQ7mygXgo2?=
 =?us-ascii?Q?qBzQupEkBZfO8kBsmPQeltgYPOEWdq22bhRbulEjT6YXaq4iIFYuqhtZpOae?=
 =?us-ascii?Q?nmADcrCZ4RtS4Qo5eiMX/p/APTP0b1vytc6oItWFInYHFGwbOQ8GNNF7k1Ms?=
 =?us-ascii?Q?Ks3gEdNAXGCTGU4Gp82UjT6EJ9s052SrkL9Ki7bJ6mfdzymTwZ0hHezTLzm+?=
 =?us-ascii?Q?eq3Xbh/nVHep2TjsOv5cZ7lPW07SNqLr2hDf/c1HDf9UYBAXHe2fnBQpz0oh?=
 =?us-ascii?Q?lQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 755efec7-ec12-4bdd-17e4-08dc3de98bd6
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2024 14:27:26.4115 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qS69jjsq4UaQwz0I9ITepqiz+fsDnvlC/YW6kITgdI1yShF5TH0tIHqL7Jx9pHezXqpnVSEJSAnsTB48VitqIf0gSLN4lR17bIAvpH7E2J4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7729
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709735677; x=1741271677;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OXvC7LrjUFfJrgV32/NaXQbEAnTThv4/8OTa4ghSUxY=;
 b=l/0J9G4cSJzCHuHdvagCmP40tmVaPACj7PJMW4jDLwI0EwQfenx/kQNI
 pjbBeqj7ENBifRVjMZV96XYkd2d/7hitttPMk6/KD3gmdIIMgbWdmCmdU
 6LcP+hnFu0kJafd/Xkt4HhNDChdpkVm17CZl4WffUwZWiN+rDQ7WezQ7p
 b+zoAsXwU2HDwrkx9KgFROIhIhGvn7DKXfavItqD02eCZ9HR7sJTFHFvs
 Clh4lZbv/LOwj1gm8nr2mE8DjK5JjouuS5RYrxTldJe6nFOpnYHP3uyzV
 iWqZjDt3xo7MsxY30q6osrcCn2Drzj1A3Aeceq83AZH0MQbzfh4rNk7sH
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=l/0J9G4c
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/5] ice: LLDP support for VFs
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Eric Dumazet <edumazet@google.com>,
 "David S. Miller" <davem@davemloft.net>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 linux-kernel@vger.kernel.org, Jakub Buchocki <jakubx.buchocki@intel.com>,
 Pawel Chmielewski <pawel.chmielewski@intel.com>,
 Lukasz Plachno <lukasz.plachno@intel.com>, intel-wired-lan@lists.osuosl.org,
 Pawel Kaminski <pawel.kaminski@intel.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 05, 2024 at 11:54:50AM -0800, Jakub Kicinski wrote:
> On Sat, 2 Mar 2024 01:50:03 +0100 Larysa Zaremba wrote:
> > For RX: match on Ethertype and mirror, every trusted VF should be able to scan 
> > neighbors.
> > 
> > For TX this is more complicated and is done not through eswitch, but through 
> > modifying security options, so do not think this would work with tc. So private 
> > flags are the best option? Our requirements say only a single VSI can transmit 
> > LLDP.
> 
> It is doable theoretically, tho, right? Driver can detect that all
> eswitch VF/PF ports but one have a "drop LLDP" rule and update the
> security option correctly?

I can envision that. I'll report in this thread, if I encounter roadblocks, when 
doing v2.

Thanks!
