Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E593C595CC5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Aug 2022 15:06:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 435D681A39;
	Tue, 16 Aug 2022 13:06:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 435D681A39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660655205;
	bh=qGKzsF9J+/CPk0hB8LVJH+UUzr88JmAPhmg+Ws5GTRg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=81vziS4JcSr5Qj7meBy5fZCzztyrjRX+/EO0U36wZsuFEUyV9rnRZ7cDzHCkw4/Ab
	 oFA/I/+wHvpQCVOEUy5FFFs16vo3E9SZ1pxUEgtTy8/BbPpx5l53qNKIW+Kj1RMmuP
	 zvwk0Gslir2JrLPMyDCbQq/cWjxYPULiZY78w5FZbGGbNA6PWsdoL63miLc6pZM3Qb
	 U5Sd3lNx3K0tNI737CPCP8hVncUnFR83nJ0u+thw1Sgad9LTiW0fJd5XUiiGddVOPL
	 PYLxIW5+e499K2erJkNsDw+5E1+JqPC6t2yrk7G7CEtSnNBMn6Jub4o0dAhBNYOhw9
	 VrkGrJTMm5sKA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DVWHQMTbU6gv; Tue, 16 Aug 2022 13:06:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D71481A65;
	Tue, 16 Aug 2022 13:06:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D71481A65
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 13FD41BF4DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 13:06:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DEB9C416CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 13:06:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DEB9C416CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BzqZ-f5NjYps for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Aug 2022 13:06:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 92FEF414A1
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 92FEF414A1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 13:06:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="271981982"
X-IronPort-AV: E=Sophos;i="5.93,241,1654585200"; d="scan'208";a="271981982"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 06:06:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,241,1654585200"; d="scan'208";a="583296605"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 16 Aug 2022 06:06:35 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 06:06:34 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 06:06:34 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 06:06:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zei4hqUoaLEpm8JmBpxz2CA4x1fOFVNrXkXCR28yPcZYRxySaQzDwDXXuYUwmhAwcKJrJ0LX4gDEorchYAmNO3Sdpf3WmmNtxtVzZb/4kE3oEQ6ywbtXEbxF//vF/qeUsCl5an8+cWPaxjNwWiK8ftB7ZyS7rsGe0rmHHKK6eMiuj4iH9ZdSb1WYDYC+r7wCjBTgLuPW+ob0WI0aPBZTQ6PoQYoARtGB3FZlBHjj6v5nF9gM9iTDn04HZgAIX0W/ES/ivAy/jAlu8w3EFO+Hd9FkN69us93/4n1LP9xmvdYMGa2lw1IXeDO+BPi2TGLHBYja/JNPzHNBMvtnP7A4pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MOcnqTCdHsZGOgaZSPZ7bPDcZjfTYs3il/AQZuCGlAM=;
 b=UW7C9YwAvkB7HWs7cYNWYlJ6vlo2qmhd7Fukyj7T9JWjp0jHFNpZqL9q4vPsMVrvEDuWYl6qpKYuQ1+N+wr6gDbLB3r0AJkvOVYYSm0aC4wsH/KYUxIJjfgWIOSCzaIjfR8LGI+38eaqxRmM908eV+Kks7XjGvEh7gPML7hfVhAG/TXqXtTYyKqkBL7UK5XyyqJG+HQ7M+NfjvB8ifUa8LE2AC+Cis5mIum6InoQisLMaxbpIZmnIh41pAZTqYI268netHqH6jKI+qSvGoCUROM3IEctODsFllQiPp7pCR/bnDnIBKvR0y/BkYm+B19spV/ttSDAsxwHm9+B4aGjbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SN7PR11MB6774.namprd11.prod.outlook.com (2603:10b6:806:265::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Tue, 16 Aug
 2022 13:06:33 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5525.011; Tue, 16 Aug 2022
 13:06:33 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Siwik, Grzegorz" <grzegorz.siwik@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v5 2/4] ice: Ignore EEXIST when
 setting promisc mode
Thread-Index: AQHYrk8o7SmvY2DW8kmnfp9sZRzHIq2xhUMg
Date: Tue, 16 Aug 2022 13:06:33 +0000
Message-ID: <BYAPR11MB3367341260330FF37E861678FC6B9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <1660310750-290943-1-git-send-email-grzegorz.siwik@intel.com>
 <1660310750-290943-3-git-send-email-grzegorz.siwik@intel.com>
In-Reply-To: <1660310750-290943-3-git-send-email-grzegorz.siwik@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aae2c202-e720-4dfd-b6e1-08da7f8824c6
x-ms-traffictypediagnostic: SN7PR11MB6774:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I41bc2+vOA4v18IK46NKISXFTJziT6lIGUEvK8kppaTQxdrtnZF1kgOaILGCxhhxQIWDBbJ5CUBnMMaiTRL8P1ZVxMe2NbOUSB12J8tDPi52aa6ixgSlk484A9MYrP080ruK24j9QG5JctQXmh4+JullK3rGANfMr5Vz1cZYmMmvN+F1OwlXDvYn7uvhF0BKSugOjJouGE+b6JWxvGN0pSk/TtwuhUTHig/ekniA/Khr1fEukia/9TdnQGx+ysuc3ER1h3ETZ+bxApJ1BTYDlrajgiIxZVM3RYZaC2eMdDxMM3heCUZCYCTB/R72/zJOGM93sKruvnhnJo9BWyILiDYKRNI+T4vn39FF6cPGnNf3eJ0VlYHnI/oc4rsZHf0E0QlTlWUVOmwWFPODD3FZKItNWxSgxKqz2oiavht/97PAUCntOs/FWiW8VS5PRReFl3O/LXvJQ7EPd9uRJMGRNPDa0F54YNFenDh5D5lfJNUVoJLhO2cA0ksiWVFtc1dEwgyKqc5MYPIXNK+pDTiB8ZVriXgQAd6Kv8GGJfVG9RNHQsqXmf6uxfACFOviLcFH9O0cxnsjMfyA0lNr380F90oU4UUsLYIpLCEuEKGKJr74fmQHaefWWopRi+GxiakOm1kIzFP+hfg4hv37qSNYUzUIQ117Ti5b+hmj+1kVgXZIQh0DaC0ma+Cmr2OqqfZXlRckOVeoSMUIaRo8vexEUeesRlEMl5+af6CwxtLzxSwNVZVIlvW+jjAtdY4zAfXNHKkX/A+9R+opuNuct0Euma2VmPCkiZvDqgQpGkVbcUOZe/ren3PJAIFvWJnnPli7i3XHL5MeFqsd/+9ZSqEajg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(39860400002)(346002)(396003)(366004)(71200400001)(2906002)(7696005)(55016003)(478600001)(9686003)(52536014)(6506007)(8936002)(41300700001)(110136005)(122000001)(966005)(55236004)(33656002)(53546011)(26005)(316002)(38100700002)(66476007)(38070700005)(66446008)(4326008)(76116006)(8676002)(64756008)(82960400001)(66946007)(66556008)(107886003)(86362001)(83380400001)(5660300002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nZh8WBgoy8wZqttNnUbOewyLZacUyqY0sCU9m6RYfZUY7iwq/p9QYECDzBew?=
 =?us-ascii?Q?6P6YXukyMcsNB33Lg/EIUZwH60oCycnbrwtkfh+UlakNJuH4ku5hUz/I6Oy5?=
 =?us-ascii?Q?oG8agAEZjZLgyZJY1W3/IKstWec4neVgYT1uaBRiygxy8HPotU2QUZin2b6S?=
 =?us-ascii?Q?rE+xfG28oqYAFpOCj/Fbkf5I9tBxEu2I1aDzIRN80aK6eZgcRvyCd7PlovSy?=
 =?us-ascii?Q?UsjJRCEGwnMQpgDj7tZrTWzfTemrB7dlS5Q3laaJUwgUpyCU9N/fzaEb/KWJ?=
 =?us-ascii?Q?5O2TjcwRW2pVtL26kvHAtAo6+miPoXBjGFgrYIwost4ZkzCL3PrzpRCgKAfE?=
 =?us-ascii?Q?6vKmn8v5qssn5ZMtzCY/kLROM72Kg7mkFjMkoNz7LNeM+0i2aXv9W+It7VKB?=
 =?us-ascii?Q?tDYTf/0kR1VwvzFiVjEQR7DTzZju2f93Gv1zS8IuUCNwGLCKwO4QQ7SVYgb6?=
 =?us-ascii?Q?KnLH16At8TQk12VREOv0bijn/H6ex14yCsVRXOSRbKyAWQp6XYa4CTkObmIf?=
 =?us-ascii?Q?KkDtR2rX1SZyPc0BZpZ7O/1evU0Q9Z+oTIvmbFgdC7J7P7ZxRzW4NVl3ElPy?=
 =?us-ascii?Q?OGMgiMAXnGfJvl9sWAHMX+vKORQawMBAO/spohETW7O6TbiqKCr86rXpiHzY?=
 =?us-ascii?Q?JBFhzsaL8gffhaLhzmOGKZB+R+T3mlxexPJuaLIzz+0kshqJC3VFkI2OMril?=
 =?us-ascii?Q?VvDGoK+wLBkF59qlp2jNiIADGLcM4Vhqy39BNTK7/coBkU7NNdFI255aq2ly?=
 =?us-ascii?Q?bq0mIsWufx6RLgiEbZbS4WdnZhTPCwmAyMhAfI5F9YvzCJNnBMzjcTdGavjc?=
 =?us-ascii?Q?PruIKbj8ZACwgOo4fgDOR8QkpG8CIEGlOOIFZlo/LhLYWNOPz7OwR1cbykNw?=
 =?us-ascii?Q?CSOtHBTN1G0Hx7dSZigfLcK/1S04g5Ir4XauSMvVUXMkeYbe0p05mbgeU+lS?=
 =?us-ascii?Q?r3pW2pkuVajK7J/+HXayWB6VO43HnooYWlHFJzvUk94VdtI+TjeCvz/hv5iV?=
 =?us-ascii?Q?5mNm604ZO/IHAwjigX1+boJNy3YFFyZ5jjmlDNXon8JOtNnf1KgPlwQjDYX5?=
 =?us-ascii?Q?/gnTDDsew8roQkcMlsnr8gF9t9AcKscvnBH2RNlufxwrgtIIcbqOXbRcrL0H?=
 =?us-ascii?Q?iGpvTJccV7cqKoxlBI6Qxxv04t1v6SC4gy74MzHNg17bPJPEHTEqvfamrbcU?=
 =?us-ascii?Q?DAPOyAgcx0uXJ8N1p8VaQKbkRuxW8PKARRAVSpUmG12lFfCLtQcUw9xeWDa1?=
 =?us-ascii?Q?sOkfH8j354LFZlgTBHlhOX1Y8MJiEWvEQvlUDqyBQmWZ9SIE5Qjv7co7gPMW?=
 =?us-ascii?Q?6PldQ7AS6meLa+9NPAhwenPsXmYadXPUjnzsRU1/koi22frrBoL6wO1wJuJm?=
 =?us-ascii?Q?LR0ml7nNDQAerIi4kZf5NkLuzJ6zKP3HyLJLfuzetZ+m3JPCKObjFqFjy23a?=
 =?us-ascii?Q?R8BaR/QP8bVqtjy0gfWugWqYAYn4mxM+nMptGjT9d1O5n7WwKMU8UchLXQ0P?=
 =?us-ascii?Q?fQnW+9LChFbGjKEw2pV7yltuE1PY2D9Auen0s/AMrlgzYf69e7qJFxaVF3uN?=
 =?us-ascii?Q?xp2NxlB44qIaiafiv3ZkcBT1tT8EE+o76NzfUqm8?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aae2c202-e720-4dfd-b6e1-08da7f8824c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2022 13:06:33.5004 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TzmGiwabjkZwippHzyUG8f+w+pWxZsZ1rpEbH8rOASlQGEeMIl/ITIXVjS7ivB46W9BhDxRohLDvRGGN0eG3Lg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6774
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660655196; x=1692191196;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2jyKgdUxXUX7FArzXrUoq35f/02+6o4GQ0y4uotzFUs=;
 b=j7Y0tL1SGsBflPfiM+ZPVt9FgxV3d8gy0NOcR7pBbQODqR/hEj6S7Bp7
 4E7w4u+zGcqDK32QckAM8lg1MZq5W2Qy/7wub6s/PPRyMkWpkfrI/f52L
 qf2kNwt9MzRyr4zieArMt7ODa2vK4cWbnCb7UoQTCk5PqQW8rQZBZwXJT
 nJSPIgIb8Q1NFwTevQqRsfW/vSBkmFpsDauQZVjjTmPg6HECNuE+PtzWT
 9gbAZ5kCfhNXx00VTxcoi831neSRtaFK0pYqlD5uF0V9vDPR61M7oIq7J
 Xza/eFQMwhLbviCR2seqbNPZtUBCehy7sUESzAWXRkozhEav2us4M3Dod
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j7Y0tL1S
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v5 2/4] ice: Ignore EEXIST when
 setting promisc mode
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
Cc: "Siwik, Grzegorz" <grzegorz.siwik@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Grzegorz Siwik
> Sent: Friday, August 12, 2022 6:56 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Siwik, Grzegorz <grzegorz.siwik@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v5 2/4] ice: Ignore EEXIST when setting
> promisc mode
> 
> Ignore EEXIST error when setting promiscuous mode.
> This fix is needed because the driver could set promiscuous mode when it
> still has not cleared properly.
> Promiscuous mode could be set only once, so setting it second time will be
> rejected.
> 
> Fixes: 5eda8afd6bcc ("ice: Add support for PF/VF promiscuous mode")
> Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
> Link: https://lore.kernel.org/all/CAK8fFZ7m-
> KR57M_rYX6xZN39K89O=LGooYkKsu6HKt0Bs+x6xQ@mail.gmail.com/
> ---
>  v2: Fixed error message when setting same promiscuous mode
> ---
>  v3: Fixed style issues, changed to return directly.
> ---
>  v4: Fixed problem with patch applying
> ---
>  v5: Fixed incorrect title patch issue
> ---
>  drivers/net/ethernet/intel/ice/ice_switch.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
