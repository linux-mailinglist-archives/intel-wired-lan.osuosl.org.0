Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FC26776F8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jan 2023 10:03:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2ADF7409B4;
	Mon, 23 Jan 2023 09:03:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2ADF7409B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674464629;
	bh=q7u9rRnPLQg0xoqfyto2J8GhVEcnyMh4/plGa8JoIMc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=q/IMUMQ+hv86dIcW5z8Ts8XXYhTr3ZPqYde2r8CeIZyygCvNGINUdfG6h/6dJDDAJ
	 SU6LgMO05D4LvCUzXxyoVarA6alQ7VmF4NnqXCeX7g+nlgGavuLINnDO4YkxjsscSA
	 t40E7t7rIudyMM48CaRkFcD4MfRRQ2f7tOzzspqbJnTsl17D8gW9Cgmry9pSgeJbVm
	 T2nC/YNbjtaHP0nY9j0rKWpW4paOtYnr5xzuUhoUwJ3ukdK7hkqyG6gVPqyARKEe4x
	 Ms+pZtse0EQ8HXWmcRaDVGN+wH6XC016XjZaPO7VaMToKZRvDNNehjRj9/xcsdRSnl
	 W3mW65ilAdv1g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7N2XkIECPlT9; Mon, 23 Jan 2023 09:03:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3BF941601;
	Mon, 23 Jan 2023 09:03:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3BF941601
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D64471BF36E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 09:03:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BBD1C40994
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 09:03:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BBD1C40994
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qU84LBdfieOq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jan 2023 09:03:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C6C24098F
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6C6C24098F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 09:03:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="324681885"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="324681885"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 01:03:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="835399137"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="835399137"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 23 Jan 2023 01:03:39 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 01:03:39 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 23 Jan 2023 01:03:39 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 23 Jan 2023 01:03:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RZTzOSySj8qq5/dkxjsrjKId87EaKPMhmBjKZWQhoZte1zv5r6C6+HjHeOXLL1DPwMbooLF6BqYKfg0aasTQANK8YbhEfe4mvqkCqAL3rGi6BB+vl67/TfRMg0BBDXFtaybwenjVj3BDB8bNnwyJPXnJOB7hXpFNRWfziWFyGXQ0NNFkv743t1kxtcD90rcuXnZrwEhsxWi4g9Eu4rHgCSXTo9sf8cz40LW93xQ9GMb/9rTGK7pYHM9rp+j6CDSZHkkJDyy0k5z7NXieEyDDfAIZ5fnGVlQ3B9TXVfOV3Gx+CIRmbDYNsNZ8/IQePTu42pZJSpWn5N+uMCenroLSqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OEgoK5ssp0eV8lldr8OIBJnskjEWA/jiIUgCQNpFldk=;
 b=gcnwD9eXaKv5kBzsQUvn3I8Gkn0n4UGAEgskbMb5qFGCOxnWSbH43NPFksNUZDvHjEz1M2wL3KxO7xxGq+8yT5vYqdsI7YElp2PTa0dwquN27KuN1BJmJGul9B4JQYQXPypVOsNT2Ch7+IGiOEZ7jbOyLl449Wa+ylieTSiV+OiqtmEZQSI4GfgzAz1CelTW1E1tTui/AJcRpuFQZptjY7Za27DlZfaoJXxt8BGuaFpO1kQZQ9OrJKj00+ohOByTQynZ+xZWf+KM0krUtH8/dWWkQFtczB6b9xi6mwFeZuHGiBHoPltz6nkOitQ7q9akz1hIwT+0D/jd0Bn6eKcxtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by MN0PR11MB5961.namprd11.prod.outlook.com (2603:10b6:208:370::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.28; Mon, 23 Jan
 2023 09:03:38 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::d0ef:473c:502f:986e%9]) with mapi id 15.20.6002.033; Mon, 23 Jan 2023
 09:03:37 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1 2/4] virtchnl: update
 header and increase header clarity
Thread-Index: AQHZEYoTBKh+Ii0oRk+KjaXfCGtY1q6r7+0w
Date: Mon, 23 Jan 2023 09:03:37 +0000
Message-ID: <CY8PR11MB736468BD5413180C9A44AA3DE6C89@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20221216200658.59833-1-jesse.brandeburg@intel.com>
 <20221216200658.59833-3-jesse.brandeburg@intel.com>
In-Reply-To: <20221216200658.59833-3-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|MN0PR11MB5961:EE_
x-ms-office365-filtering-correlation-id: 2db925fe-a386-49b6-cbf7-08dafd20b715
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ah9GB9C949mpxSug2D6wDBJU+4CAJx3e/MqyiLNaXdWc87pPE68UBMqPClkeydGIBb5WOQWale9omw2mVCkNnlOoGm7+e92M7i02IgOlnNHYkizFNX47ndssGtAXJuXxXqbvjF6ufHXN6Tx0wIvok0DMD85wYfbaiHaW7tUnY+UYfUwu17V10W0z/EGEFc/Qod/9aXYnHPmLSKGPdgrYj0xULjM+8UX0RAyB4nnrfwhjW3fjweeCWYV7/WkC9XZxPUwv25Ko+P3ItndYJjYGIzV2fx/qJ1Dq3Ktu9ym/+j83nS43v0IGs8p4Qxj0XN2qqXFZwz7gGk878ZkxwpANRsr6yA8qkviO+UuGHifRQHM+lXPJmBv/wYYG4+n5S+55Gedldf1RiDchfDTzqAcIfC4y/YrBGOkBoF5uas15OPSbySmbeQoxd4TrYv1uSvjFiVQzoDEHaosFazWJuncj10diEPR6RXbvgvWf/HPfmj+LkdrneQJc0+k046E41gIBi3dWpt+KWe+i+j795wDtf5vHJGw3gbtcqq/HUOKiWIrDwACsN38M2JRJizr6Rh4BY580MZpfZBnARFRZQS7VyXe8dqVPyy8J80qxy+SZss+0L3n7WAMt1GGgRnzc04e3vLdoxRpqniwAOCnTccmIRjUTf/f7HB6M32i11kAnhO0dW0e3v5YxRpaCsRvZ0O2IbYiIGPDvENeWKnWy57myyw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(136003)(376002)(39860400002)(396003)(451199015)(71200400001)(7696005)(478600001)(122000001)(33656002)(83380400001)(82960400001)(38070700005)(41300700001)(38100700002)(316002)(6506007)(8936002)(66446008)(66476007)(5660300002)(64756008)(8676002)(15650500001)(4744005)(86362001)(6916009)(55016003)(2906002)(9686003)(53546011)(186003)(26005)(66574015)(76116006)(66946007)(66556008)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?WC7aEJPSv540Xov6c2yh9P0T+wq/Zzm0QHBvQc957+UAhHlE9ryLZqiAgd?=
 =?iso-8859-2?Q?4LSxXolpzhwZfg2tZir1k7+op+ujdkduc3YMYdtZ3LJ/pfHpln+uLzPn7B?=
 =?iso-8859-2?Q?AH+6TrU87WAg9/iqigYHYkHSjXLxi79F5zC5w8XGtAQw5L3sLpdTikmHf2?=
 =?iso-8859-2?Q?sTcgXApycQS3d5m1XS6qCtcDMRMXWBiZ4rYfP0TqTxJwezPfr9zXQlgI3h?=
 =?iso-8859-2?Q?d9S5/AQq2oqQ6zax54zNYktfrV2iOnQcVYlbeEVdXgZFR9ACv5md89HwSz?=
 =?iso-8859-2?Q?lXBuIISduvTf9SlsNPAbOoWdaCibebg4E2r0Dk857kCjsDS2YwUi6sR+gY?=
 =?iso-8859-2?Q?YsPwHbO49VzWpRrVF4WzV+ACynXqkLvU8u4QZX13JZQsByGJZqxxbfNMZH?=
 =?iso-8859-2?Q?+Z5olDqVRUwmY9FbspB47hwncev11Y2u23yBqXZ7rJgBcV7ldlSfiLVHbo?=
 =?iso-8859-2?Q?JzU542m5+ddml0h6tlyiz073jjJlbuz3wrvkO/XWPeeGjJKmfj1cSRS8dm?=
 =?iso-8859-2?Q?/j/0aK5qWmeTQzVMxRmTapfJ/vP4W//0NDGBsnTKnZuYUBdQs1CNtV7XYA?=
 =?iso-8859-2?Q?ZQS0sr2DC8yNo8gQCkCqBAnS0bo/1Jvsbk/pZbExhbpvvUYz/rEAHOYMly?=
 =?iso-8859-2?Q?Oy9mWV31+XLwRxdio1RMA3XM9DNVxqPvoLpCkmgxngCi0+yp2g3lnJjLtb?=
 =?iso-8859-2?Q?QnAMPcBjFisLqlM6QhlrzdLM3SxOH98E2/SGSX+aqKrUWwFqp4vB1aMZ7e?=
 =?iso-8859-2?Q?59YB+sW6bFn/E7lKoqOu3o+QhSPqavfaK8SdKw0PY1U+19vPNMjyKKKk+D?=
 =?iso-8859-2?Q?t2rGyQJ51p5+jV7kVllax/sgpf0vu2ORVij2lxInlM7oOVdk5jxRyoP9du?=
 =?iso-8859-2?Q?ldK2xr2N/yP+9IxkGWaq1wmOSPgkJEZrUjt9UYDsDNlXECPlhHLXAc/yK8?=
 =?iso-8859-2?Q?7Dumq6hlay3W450jRq8TydpkmQ9NMM1tCMFc86sGXQEAKRrt4oND3rzf8W?=
 =?iso-8859-2?Q?YfoyGrzXvWfw81SsiF6J+wKWI5g/lb5RHv8oJe4LyIubMDGYHaj0eEQvb9?=
 =?iso-8859-2?Q?a6zv35PIGLw52+3P+agFcJcBZuS2cS0FjGUGXe2aUvNqnVrCZGfuP0dynI?=
 =?iso-8859-2?Q?FmBHUihPjvAF+IMwxkGtY4w5cNiDoK1MZZ0SYaoHrlj0mHO3hNrIR0YFSv?=
 =?iso-8859-2?Q?3vwd/Qc966CFjbijKdjU76OudIUKx4Em62gLJ6ycBy5OnBexYMeXdxJGHD?=
 =?iso-8859-2?Q?RLwTfETTWH6f859TqyWm1dL9GcSnOd7HlT2JAOFO5q8DwGjKeb9eend1xS?=
 =?iso-8859-2?Q?SjApBeOl8BqcGGqA2jQ4K0oj0jXENtb5tBK23XeXKBcBbuu9tqV7/kynrS?=
 =?iso-8859-2?Q?EcYV+3Q/svqxwuoAKXkK5yc2O6TTv/7qN0Xp8hUXEnq4y/i2+lByPeTo0V?=
 =?iso-8859-2?Q?L7jewej9lCBjy6CqxiSwLLwMZH9C9U7oAV8Ns0cDw8DpYiA586HR/DPG3f?=
 =?iso-8859-2?Q?7qWro0EPDN9TRDKD2rodlI6FrRrRosqTuf8Uebs1mvhIoNOLQ/EThGnZTV?=
 =?iso-8859-2?Q?zv6yudtQaSBxJ4gDRmmfbYzWDCcEdZRvoJShNnSxkhr5iLbhlXKQGpupy/?=
 =?iso-8859-2?Q?nC15ltQtTxf+w5GrZGW5+fcj1B+mgJmbJm?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2db925fe-a386-49b6-cbf7-08dafd20b715
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2023 09:03:37.8317 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x8Ckmt5aRUOb5S9iFCGnJfKG89HHVyFU+4UMnwtmFcLM3CFIPTH1YtbLxtg0Y4sJlyUXKo2Vk7ZySSjMXcHo9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5961
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674464621; x=1706000621;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=7Wixpr/G0RKl8nhep6pO6HI3Q7Z5h90tmj08o0Yp04w=;
 b=S8xmF6lRKtYh1wiTf6WoLRYCyCyCSP+V2EOzvStMRaibZMUG+KnlX4D/
 H7q0gUWnwciwXM11UeF3fNl8GqGGBfT8EEoFdMmqX5qCoUkQ369fXewAN
 NOUL6PxUcf78PLhPAT7a/64SaYXmyMv98+zQTjK9ovP3u9hcuHaGbvV41
 leKMVCFpQF0DNF3p7fg4xNdCJOvW+FTLm1BZrbrTQNYciqrRv8M5vBofn
 QnbdgWWLgh8q8Ta2cNbdTwippz0B4fusCqwiK4kke+1qDjLYsMIB3N3T6
 dWoXwabXafDfkU2IFCOKUqPIQTgeNsgNLGmpoEVewSEczzH5gHTzlXRpf
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S8xmF6lR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 2/4] virtchnl: update
 header and increase header clarity
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jesse Brandeburg
> Sent: pi=B1tek, 16 grudnia 2022 21:07
> To: intel-wired-lan@lists.osuosl.org
> Cc: Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1 2/4] virtchnl: update header
> and increase header clarity
> =

> We already have the SPDX header, so just leave a copyright notice with an
> updated year and get rid of the boilerplate header (so 2002!).
> =

> In addition, update a couple of comments to clarify how the various parts=
 of
> the virtchannel header interaction work.
> =

> No functional changes.
> =

> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  include/linux/avf/virtchnl.h | 33 ++++++++++++++++++---------------
>  1 file changed, 18 insertions(+), 15 deletions(-)
> =

> diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h =
index
> b1cfa84904b1..2e685aa37688 100644
> --- a/include/linux/avf/virtchnl.h
> +++ b/include/linux/avf/virtchnl.h

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
