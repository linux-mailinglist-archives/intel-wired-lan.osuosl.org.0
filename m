Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5947A7663A4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jul 2023 07:29:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9560E61195;
	Fri, 28 Jul 2023 05:29:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9560E61195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690522163;
	bh=2rRIljIWHuCvvVoEA7ErF4FY6AG21XC/5+EncNV59X4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZHao1qp5TQTLhIzI9AiTuHhnqFb6+fGvVAWgqnhOoAnGlM/USMRnx/pCfxEDrU16b
	 YnzK0hXmTE5VvJR1/BIHCCiivI0OQvbnhiAOShTL2QaxDQc2IQlaAPmnd5A/E8XT42
	 dsQhXYBfVL9EpbNQN65pC1WH+dtMKFwtHCsg2JJGePNS5i8K2/UISPsQ4VGV81CYtY
	 IyLUBK18NpLdyVtlecBWDObSaX+TqIas/KzGtdZklrefuTcWZxIm2crM94AnbyZQ7r
	 HPXgfX4NcnRB+8ksS51ZCbIwcBV/IiEHh6Wcpol158pxY/9aYqXLfN0IihvspJuWxx
	 k9WNnGvAFcWnA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OFVDP5eLrs3V; Fri, 28 Jul 2023 05:29:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 74E8560C24;
	Fri, 28 Jul 2023 05:29:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 74E8560C24
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9939F1BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 05:29:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6FC9F4012B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 05:29:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6FC9F4012B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QVSbUgyfLXrJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jul 2023 05:29:16 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D5C2E40127
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jul 2023 05:29:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5C2E40127
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="348790742"
X-IronPort-AV: E=Sophos;i="6.01,236,1684825200"; d="scan'208";a="348790742"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 22:29:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="704391020"
X-IronPort-AV: E=Sophos;i="6.01,236,1684825200"; d="scan'208";a="704391020"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 27 Jul 2023 22:29:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 27 Jul 2023 22:29:14 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 27 Jul 2023 22:29:14 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 27 Jul 2023 22:29:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dL2Euv8g/jQhgpMaPElDb0UxincWkwUtF+GbHP9NVKCG1OfvgetcUDq2+2qqRbeoFYabN3+d/1edfMpHJ0QDUQpiXrgjeGFO3NEVNpIk59YL4otVEoCnqmVyj5qNECawvWkbvE4YWWPOcti+A/gNXJ1MuotlrScUFTSQGr8Jb+rR8UHdH9r+VskRetXnz6hmVTzkEchqZnZ7IUWkhw6GtK2JwHrjmgh9O5exavQup1kkHeHlu7sFwQHgH+ILn+dj/zzOrE6VVKXqHcoblMJ6irSu1jgz3bRUPCpEoUa9AzxhN3PnOHdnGj3RORY0VOnJenV9RRub0N9VvropcFmcRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lPrNujUFFpWSQK37HQzee0vD6KMFUUmYjvWpVQkGnvo=;
 b=ZseN/Vs4wqYrbtdrAjd9otWleSe7ZtZcdet8wb8ItsVYvQuXeQpNjqZEp5rKpegq9nhnGjBmrBciIL16zl5ob3MfuE1umGQlTHRKtk/9ZbGBYZ0Oks3kqL41MSheOTXttCnLLxMWZmeQqcXYTGHH0hnRHW+48BPwE4nxks0sCuRAc08hjecp2JWt+8h8sVkdHo9UrsiS9Zt4x7JKyxm9lUhU6rR0QBVfoyYncuJLrgzg1KR/rukBeXBnOAp/xh0fF5jzsHjA+GKwpqv3r4Jam++fNiApvOxRPIFNp4ddm1kRvojsBX4r7CAuRfji7NM859sH9ZAEqS2wT9P04xWRrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by PH8PR11MB8106.namprd11.prod.outlook.com (2603:10b6:510:255::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Fri, 28 Jul
 2023 05:29:02 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::f04:5042:e271:9eec%7]) with mapi id 15.20.6631.026; Fri, 28 Jul 2023
 05:29:02 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 1/3] ice: prefix clock
 timer command enumeration values with ICE_PTP
Thread-Index: AQHZv0IyxK6UFZg/REitI/pl7fx9Wa/Oqd2Q
Date: Fri, 28 Jul 2023 05:29:02 +0000
Message-ID: <BL0PR11MB3122FC2257949F1EA2F94BD2BD06A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20230725215048.1311584-1-jacob.e.keller@intel.com>
 <20230725215048.1311584-2-jacob.e.keller@intel.com>
In-Reply-To: <20230725215048.1311584-2-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|PH8PR11MB8106:EE_
x-ms-office365-filtering-correlation-id: 56bad9f2-14cd-4bf7-a871-08db8f2b8d73
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CaLgkD21WwklnI/c0WGY+9b3JTkfkyjYJpanwKWfq0ebvxVUl5FtFYXFRP5bJiScVfFFGDpIa7BLKwo/EvYKKSdlzR4nK4vv996ButA0F2ayaOo1RXsy46AC9tSys5mTiJoVuRWPRd9X6pCfPb7zL5UUmbHco+cIR+mD73IqOKrJv0pqZ6Txskf+8D7oo3Q3crsmLoHzxfzuDFuJugmBr5PZq0DQilCqFOA/uw1GycxIvonmWTN2o8hKTzEv4PSwj4NXKfvuBB/DuI/gFq6QB4oQuNCNr4q/JBT2hZ1HVFRTnRpBqlt5EfzZo1iGABBqZDTxv/iAg3eY6H5UJppzkfq+DHREVsVNRMIWVpVk0Z87tM3jhOlQVWF5eYhVxBAP/K9+3znqwlwaii3O/kakC+FC/6GxW8rwuehNWyYldUdctJayeB7jyLNxrj079yUuz/AJ3TzHWwZNoXOmaM/imCJIhfgK31GgA8oL4ljLtElmlnGPAWfNONbyRGGB5mLwJRP2WuD/k1YmPZECYlMQ8C78nEuHz+7At3J9FCq7T0lvKJkMqpxrco5ROvhcfhtbi0OLN5Iq/Fy6Z33cu9xhEOjW0/HEBlEYSe0OSo+i06Jo0tDj2CbYc8CeQ7E/KYhI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(346002)(396003)(39860400002)(366004)(451199021)(66556008)(66476007)(66446008)(64756008)(66946007)(4326008)(76116006)(38070700005)(71200400001)(52536014)(5660300002)(55016003)(478600001)(82960400001)(7696005)(122000001)(9686003)(316002)(54906003)(110136005)(38100700002)(107886003)(86362001)(41300700001)(8936002)(8676002)(26005)(53546011)(6506007)(186003)(33656002)(83380400001)(4744005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ff/5rESp8vdbQSN5U6C3ADjTh24TO9G0A+ilzi9hLlJVkM1IgKpQqlh63rjK?=
 =?us-ascii?Q?vbOFaoQFDlHxtcATXdfKh0rkX0TU/fus9C1lrtF5eocWZzhy0+iGEENpl02Y?=
 =?us-ascii?Q?9OL1U/yqCG8ntTlXvk4drsXWBiUyIbHNxhNL4UPuDl4LgJfJKwHaT5JRkItH?=
 =?us-ascii?Q?i1jDFzB7dJQ0q8mz6JL6iiN6efw8zKxMDmSqwfW2gZk3dUsE6OBP/JzWyu76?=
 =?us-ascii?Q?g/hTuU/ukDx9FBKYU+RP4NSmuqaW5jmX80QMeUMLOKuCMG6BSeW/A2XAuFnQ?=
 =?us-ascii?Q?HLLu/fW84Xma140fx2EZuUhkbo9rqFq17kwC2ZgezOm8H0AckhtwWXAzC45S?=
 =?us-ascii?Q?Pj1cpDPohHq8TMVFYivfVBfF6UVExAu/jbZzv1vcmVyjUY2oAL1I5uby4fni?=
 =?us-ascii?Q?1rF0aF8+87HKJPxsv/MN0B6FIzyUteHem4aKxyJc+IvrW3DivqYVCEcq2A2D?=
 =?us-ascii?Q?W+t3WrA5uKBHc4ypiktBXxFreaIXw8DOhrvJAqg2fmhNvyAcBB+uNi98mTJz?=
 =?us-ascii?Q?E+AsdFd4BhGCrQLWYUvqI27hRCdk3DXkD9KN0Q+KJM7r4nAFIQeHCLriHlGX?=
 =?us-ascii?Q?rUITv9xwLLJEzOUJbRQ+3kQKzNhF7HTrAGYNXuDyYe/mKWp3Cfzu9ITZQBXU?=
 =?us-ascii?Q?5d/IXD8HDDTLolCyifTf00IvuyF+cQ8GaJ0/ddU06qnTUvVGKWSVCLFLnnnE?=
 =?us-ascii?Q?zlW+JfMG0+Akdx59jk5yG/pTk/RkhMh5HZbZNdPO97IVxm4bBjsiID+JcZ46?=
 =?us-ascii?Q?EjRTUsmG6FpaTobTSFRcIB3SY2ljFGP+DtY/axDtc18GXmJ3o6f4BS6ZCsKb?=
 =?us-ascii?Q?EXeZr7pmSck2fDjuKh4iBXipYsq/cP/g95NC1GRybsDRpfs+KoSMAdlLx8iI?=
 =?us-ascii?Q?pl7+oe8ZLR9nAX3ITZgL89zlDuXdKf5QNdky2CzJmxQ5fYqYK6hwH8ha8VFt?=
 =?us-ascii?Q?7Nfyer0QqzHCi7SBOiG78rq0G2HW0zQgB3YKdQUHOzDUnxBnuCeCyd3CyTKB?=
 =?us-ascii?Q?fIRdHLHDro0BXqIJFHLrEw6zxRz/Vz1FC1kR4Tco2KAjWk4fbwg50NflWJZI?=
 =?us-ascii?Q?38gjqXHxqzMeQg8ic2J1QD+bUaaOJY08GfnzImEtX87c2Yp1K5Sre5FGsoHC?=
 =?us-ascii?Q?Pkouk5BQs8RSWR9ct1jyHYeSREAr/5RJTJTp2hmf9oCaiBHDrzK83D4t/MVb?=
 =?us-ascii?Q?jiTM8V2QosS9pxWCk/MsygDUB4DR5kR2HOypPJk/okvrsU0EeQx3w2W0tWIv?=
 =?us-ascii?Q?47GhSr6I3NCxkfGdj4TM39LEVElo//CsYkgWbSb6GU4FLDcLmEG/MAg2cxT9?=
 =?us-ascii?Q?hHR1yYHpKtltSCJEdN49Zwh5iS6A7G9bSx9vjVvWvBK8tyFA6tNZz1hBZQIX?=
 =?us-ascii?Q?bp0ulW1p3EBR/nvD3XK9G54H6PFMukYq2lVs3xnjGe0vxm4kdWPnrblQ9k50?=
 =?us-ascii?Q?jaZuakNMb2SxU0j4QX9/xAj1CIQeLTjtaslaabhQqVsL9E4wdDndsh8t/KRO?=
 =?us-ascii?Q?Wd+mmxzJ4qU3rP9n2FCrwJwfh7xhISmvF9pvhn3mUSVotql+dfz/tH6LOsh7?=
 =?us-ascii?Q?YIJmJQz3Vq2dgdjTrgxaOUaihyREHzrX8XMmNGvdTDAeuUD7AveB2LMRQYFx?=
 =?us-ascii?Q?NA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56bad9f2-14cd-4bf7-a871-08db8f2b8d73
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2023 05:29:02.2563 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E/po1K8cR06V1EANg/duPTDcwtLT1K4N+RVmBoCtJ2Ve48mi+57G8FP92jOK751fn/Q7D0pnakIiFOgdjwFGhQPt0O4CgbhueyxuMO/mIWHbcrft4sji5aL905l6twwH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8106
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690522156; x=1722058156;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AZPeRhr2clb51OEZGBpypumMgqeL9Q4BBIH7JCQxEhg=;
 b=fyGyS1KVGnQvxuEv7urds1jBqBQjwmCdkrgUK8brLl4HDQGhymwQ2k2X
 Qbu41mp1NOLuAXmGhozGoL6QJ6ZAtVjaH85VRkaSqfZv9InW7yzn/honz
 uWPYOb69hRNIMtXwA/c/gJmS0a5JNz/wxYwEEQxE6mMRZafO7WRyr/rSC
 nTE0frunw12WIScM061dqQdTk2J1B+MMtgIwquFccxLPkDqMg7U/VXTDX
 J/QAEqgdR1DUO/7OafsdyoSR5AiXhzs1rsntpuCsygt14MpyfemPqqTXc
 KqAhsSBv/4tFrehjmG762j5w06V3OlFqoXLUROJlELwSEBdqrQMy9huKM
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fyGyS1KV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/3] ice: prefix clock
 timer command enumeration values with ICE_PTP
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
> Sent: Wednesday, July 26, 2023 3:21 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/3] ice: prefix clock timer command enumeration values with ICE_PTP
>
> From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
>
> The ice driver has an enumeration for the various commands that can be programmed to the MAC and PHY for setting up hardware clock operations.
> Prefix these with ICE_PTP so that they are clearly namespaced to the ice driver.
>
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 90 ++++++++++-----------  drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 10 +--
>  2 files changed, 50 insertions(+), 50 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
