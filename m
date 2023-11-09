Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7B07E67C2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Nov 2023 11:20:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57619612EB;
	Thu,  9 Nov 2023 10:20:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57619612EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699525244;
	bh=q+lF+cD65tvnffg67iMUmbwDFjZtbWOZyNr29O5nxkI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4Gv2j/cpVesbDM8gaGosvzjWcW53Ow0/huxlWUFuVUkZDRuy0wXYwpp9f4ux0mJY5
	 xBM0l4eFP6i/J4ANDysbRYnMPFl2rZhu00wLYHWaBXfDFvei7mdLDgk8s+l0biRPtY
	 UazTJ8IwBeH65BZHOGn8//wKyGZDRuyMe7hbZ1ekH6f5qJ5POXYktxGRjE5T9eXQX/
	 yQZVWnb1APyiITzhDOPrvyJqHDTyLvck+1c0fzRw8cE0Gq+63EnJK6IIEr/H/E4kvl
	 kAH394Iq7IZgj8r9dFBlFonTGZKvNkC+P+oPS8YqZuECcBqeaGZOO/PSRYJQRz1FFn
	 0Ij0oJXGFPf4g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p9cmEOUJ2pu3; Thu,  9 Nov 2023 10:20:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3165B612BB;
	Thu,  9 Nov 2023 10:20:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3165B612BB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EF8271BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:20:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C421A41DA3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:20:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C421A41DA3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2phVHlGMn-B4 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Nov 2023 10:20:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 08BE041D8B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 10:20:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08BE041D8B
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="389761037"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="389761037"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 02:20:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="880551648"
X-IronPort-AV: E=Sophos;i="6.03,289,1694761200"; d="scan'208";a="880551648"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Nov 2023 02:20:36 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 02:20:35 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 02:20:35 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 9 Nov 2023 02:20:35 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 9 Nov 2023 02:20:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IXIyAwm6r4+0RrwZqcE9tVIuvZjsXf/za460HxEoqn7rqHxRwgzHzma+2V5oKChdlJOTQ0b692Zrp4K5/0aG/CWXdtQtnxeyS6g7Ix+oUOQdBTNgxpyAwfMAFHufcQfOkHHUzgX/9fG/SqeBOk1Fc/QzYqAuatb8DjqXArAh7E/w+F/TS9ADJtpPC+L2Db3i68ZPuRBbfXbax6FrMWKuxB7NTzgrE2m/MiI3t1ddpRiqIxqSeUXJO3+K3gBbSUIuzOTVxeN/SI5K02cuQEl59ZaHOGNs9UDo2ebQq//z1Uj3trXb4r4J/yNoTdi1rUfW8mgu4ZPup/HIHheZh1Oe7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bya75DE1YV1gEDjGq7dwSBJ5CVuV+vdy5fpkE1+bra4=;
 b=DhkyjaT+6PWhZPb8SiGLk6Qejsrdmqiw49O29c+bcewRl/pQvZKW8x2qiV7n16NMW9moLOgdWEedKLH8/2ZojHzOcFvy56woSy0uueW/02v1iQzo/bM9qfTI8eKho3KR8LFtQOCYeEKT19VsRN2hQXjnAQUqQ9qNmQjmAW/LPe+CacdIhlFmYC17KFdvSXb+2t4n0S31H/GrUkQIlRGMdtIef1ftvJzRaIjL0u8GmWxJTaU6/onoQPSLqn77tnWGeeQR2/PYPFKwDOjKgzYdhZVBuIVRcTiKwC6+UtvBSBgR1lp2F7ZGwcosm3okQiz2J9/Hh6RAMoP9IU6TaK8GIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SA0PR11MB4527.namprd11.prod.outlook.com (2603:10b6:806:72::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Thu, 9 Nov
 2023 10:20:33 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::3d98:44fd:690d:c3f3]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::3d98:44fd:690d:c3f3%4]) with mapi id 15.20.6977.019; Thu, 9 Nov 2023
 10:20:33 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 06/15] ice: track port
 representors in xarray
Thread-Index: AQHaBm49guWSUSWrqk+SijM5lh4ti7Bx37lw
Date: Thu, 9 Nov 2023 10:20:32 +0000
Message-ID: <PH0PR11MB50135D7ABAF42FA98B944B0E96AFA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20231024110929.19423-1-michal.swiatkowski@linux.intel.com>
 <20231024110929.19423-7-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20231024110929.19423-7-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SA0PR11MB4527:EE_
x-ms-office365-filtering-correlation-id: 04424b87-fe9e-4687-1774-08dbe10d81af
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Rk+BvdL0aM37b6Q6kWw5jJuTNFuM9u+dqhsGepmEcQmYtHPFxRHgPcRgUa3vrwJkL1Z4e2MOjaiIFmKkYYoy7PSy6/hnW+9YVDHxFSdUnmrLUhxDw0fbcyIKIj/GhOUx0ZlRcnEBamjM2lnT8gdSA8sJF6+edGs6PEBZWa2BDgOiXPCeEnNpU/d+v2cUQlIrPOPM7CMhlYOB7G8ilBwyPz716f3SeGhrgwChmj582YjagUVmIrZw7D2cqPGDANAGCH2Ac1GSOIolcqhp8VUvVAfX3en1FW+Z8EsMkZV01DvQ0jsc/sN+2Dk7BZFZGsTWMhP0sm472e9vx9Jg5dq/QAjtEnNC3TqrJdCjMgbuzqKDXY+VWfv3wfvBH1KxniLx/BlNgIWRHBZjyLH8lTp4ZtRJGKVKAVfKPKriRFELZ/a/GeMNOsXzJL0WK/1wyJFHVn4GlnQ0Ge6p7QxAlE+SQdOQ86Ma5DqETzeigvI287NRaQ4Kx6kPEVdbLWkB9YSteSzVg0qSm3Y1j3W/tInjJFQ36dnM0FdMtpYEVunW7+BT5fIMlQtSdT0gLrfAEOLpfsFluS+PrTqZnub7JvX8ocGEifnUWGeEENun2PpNY8A=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(39860400002)(366004)(136003)(396003)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(122000001)(41300700001)(9686003)(8676002)(82960400001)(66476007)(26005)(478600001)(38070700009)(33656002)(8936002)(66446008)(4326008)(52536014)(66946007)(5660300002)(86362001)(316002)(76116006)(2906002)(64756008)(110136005)(54906003)(66556008)(53546011)(7696005)(71200400001)(38100700002)(55016003)(6506007)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zRparIOEX6CGbBl3SN8yc79WK8QZdE/ef1pj4sQ/fGC/28YaIpbTB+tpwmPI?=
 =?us-ascii?Q?+mXuor9Ay61IEKBsyQS/Ldogt6LN8azEVo+TakUxyfOOr3kgyjJTOO43zNkl?=
 =?us-ascii?Q?eTTDl2Ft9rAh2rIgul70h0aWlLIrc8BhXTSafayX1pIzYvdWZYou1535pBzs?=
 =?us-ascii?Q?rO1NBYpHxUZZP3M7TasyEo42JijDIfjN9xTu7Y7hlg4iBIu3TwBAFbXI++Wy?=
 =?us-ascii?Q?NT86WvXT+hl6txru7dCmG1pbFk0Jz7uyznhqJ1X2+0MMwESQFOUkUx3OpeJ1?=
 =?us-ascii?Q?MrP05YZLxXR2SWrRGpUQk8pcXlUFzJHv+cS7hDrUnNHrOB2XvlrN589xH4A0?=
 =?us-ascii?Q?SbFrmfeqz9N9qelaGT01v03+U8x8OJtUHCT2ds5LUnRIRa2NbDBJzuLH67E6?=
 =?us-ascii?Q?jJLzYDA57Fk8NofaSn5xlvrCEolok8H8JNKotSnRGOvBncyb96IfhBT7DAg/?=
 =?us-ascii?Q?zL/XMtKYm7hCqsJSReQVI6eZQFiOTSYYNmY/xo8glgjmiewdHTSdOc7lu2Jp?=
 =?us-ascii?Q?IEZIJWwwO8tyuGy1h9Zw11jHSEPIjAcfLt2jLKhCVaAKofeNsfZI6r5F7ft5?=
 =?us-ascii?Q?eFTbGKHS4eORTIExDDBkiABtynqaVv9pMGQqsmGweuTR7Uj3d6ag1KifiA9V?=
 =?us-ascii?Q?rH8BltxvBV4IaocX3EtXDsUdGzdKObM0qMrzhxQzF/1LhgfmhWkyfP23Oe8A?=
 =?us-ascii?Q?UMPFmAo9CmXPS+2hMu/wHK9b5hgy7D3LjUTeVt6mgPL0QJVsTao4uQJfTqkw?=
 =?us-ascii?Q?iuhzcIOMBKX10akG+QNuWLbRVIydpBfdY8DAjKwPmye3VPTWs0fB4md5o3eS?=
 =?us-ascii?Q?Cpo75f5MMF63vE8+UJN/saSxcIK20s0+G17n72BAmlNVI9Pak3YKVDzleDMg?=
 =?us-ascii?Q?uZIas0tPD4kog+CzLOnUypv+6SGHUV/x0+BM1HN/WNkMNrv/2MV0wDVOaZdI?=
 =?us-ascii?Q?1RYm0JkYCijAZKJROQZSY8YVNyyN7n1/sb9HfPNM1ydhRQAvA4nWfKnmEk51?=
 =?us-ascii?Q?rQZ18VwijsyanbgHKpI1FHwTc0Kx87d+QwhISQm1AWHvBSnO6igmtxZr/dt1?=
 =?us-ascii?Q?U9ZB17gi0wTk6IEk1I2ftG/Q//fPIy7jhaYyJMS85Qt2ww+Qyl9xqib0bldi?=
 =?us-ascii?Q?dEwKrzDAi51nLYv+2eg0yxQeb3Ocj7780iZn5WYSlpq1oBNpOfABfpSKRW6h?=
 =?us-ascii?Q?3xWOKVIXq56HfiDF+z+LjYecgQVf6SnOWd3ax9WkJ9MqGj4hwqBRohf56oKc?=
 =?us-ascii?Q?0wjUL8izJJcjaZvLLijshQm/qmj5TueOoVBWyOZUF5eNceiQrwOGJ+p2yEKY?=
 =?us-ascii?Q?IegQAlgwdkICJW5gFJqgibTut0wF5oO6jL2G9aYogo9SPJgj/dn/G/lLY9M4?=
 =?us-ascii?Q?gTRY5kdhhDKCPSOjPfpi4rPfUm0HyKB+PIzezPU7bQL8zuqbfH1ouqzzrE/a?=
 =?us-ascii?Q?LY6KYYKMEGPOAKQC0pz3nsSlP8t8aOqGMZMagfKkhbjCKd+zF+OuOPJvQpB6?=
 =?us-ascii?Q?EqtSsNEkmIQtRu8TlgiKkteftqneYMdT3A/ZfqEGgXT/qkq+o1HBpqQYHx/b?=
 =?us-ascii?Q?bpR7YY1JToJNAj/rS4FfU1JLL2WHF4Dy/1wi4fISVLKmOJkAkMG9L1SEYoEM?=
 =?us-ascii?Q?mA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04424b87-fe9e-4687-1774-08dbe10d81af
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2023 10:20:32.9043 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9r2Zuk28xh6vCPhJGYszeCrOColB9Mt/EKfjq+7zdeABBY7EuyIpeAkwyDlz6ZjmNGJOENV2rh0+xfuWiom66cYMyEyAg1r/Ge+eLtToPQE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4527
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699525237; x=1731061237;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1i7a84wUhSszRcbP4BCgPGP0dV3gLbw7MliXmVZELcg=;
 b=kD665UAJLBgJMxiSqCCE6K2tXb9+qhNtGDwv/3LfGF0TlQCQTcyTor2o
 K+ZgmADhTNQ4zBtrsswU0et5Cz8NHSp4151hyFhjbZPAF/eWLRPCbztAO
 3tMIORG8VtgKF9VYM2HYogq0GvjjFYygeyL9iI5IkJKwnO8Xswso4fmFK
 +4cwI0xcnwa2TWepP9trWIqiYOWc9Gn4od8QkRVEk+3Pe5qZusQQc85FG
 swB/dXpPTPAeN1QHKmVQAZwJ+mG0/LcVXVRVFdRQjNBoOW4xcsJNviUzl
 83aWzTWL6p9KIeWu42QknMpbxdSKExsWVkwQP6lTXOgLfyZrdzwZKp2PF
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kD665UAJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 06/15] ice: track port
 representors in xarray
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Szycik,
 Marcin" <marcin.szycik@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, "Raczynski,
 Piotr" <piotr.raczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Tuesday, October 24, 2023 4:39 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; Szycik, Marcin
> <marcin.szycik@intel.com>; netdev@vger.kernel.org; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Keller, Jacob E <jacob.e.keller@intel.com>;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Raczynski, Piotr
> <piotr.raczynski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 06/15] ice: track port
> representors in xarray
> 
> Instead of assuming that each VF has pointer to port representor save it in
> xarray. It will allow adding port representor for other device types.
> 
> Drop reference to VF where it is use only to get port representor. Get it from
> xarray instead.
> 
> The functions will no longer by specific for VF, rename them.
> 
> Track id assigned by xarray in port representor structure. The id can't be
> used as ::q_id, because it is fixed during port representor lifetime.
> ::q_id can change after adding / removing other port representors.
> 
> Side effect of removing VF pointer is that we are losing VF MAC information
> used in unrolling. Store it in port representor as parent MAC.
> 
> Reviewed-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h         |   1 +
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 182 +++++++++----------
>  drivers/net/ethernet/intel/ice/ice_main.c    |   2 +
>  drivers/net/ethernet/intel/ice/ice_repr.c    |   8 +
>  drivers/net/ethernet/intel/ice/ice_repr.h    |   2 +
>  5 files changed, 94 insertions(+), 101 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
