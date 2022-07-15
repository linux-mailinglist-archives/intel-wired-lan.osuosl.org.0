Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CC7575E6D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Jul 2022 11:24:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 16AAB417E6;
	Fri, 15 Jul 2022 09:24:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 16AAB417E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657877081;
	bh=PZxwGO4xwzO6zgxi4klA6SquYkCaKiAZ6i1ig7aawiA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VrZrQgtJ+2il/OheZCmL0Y2nKHCxeeH+AKQCfe2x9kujB5AK+9P4/Bl6fOQPxQySL
	 W+j9KBfLvqE95YrdNoTZpdBk0G7D9wHpJnYh0lLqrKWXUAjcPSDhQ7zSZ41wol7nqD
	 WONV3E8SWkHn+HwKpVmbe1zC9HFwVA6pZzPk9DYMv9yg8k8pnpsOfasKd0c+uMKH4+
	 46wUYC9vYk61ZfEsLKIrm29JtmSWavK1K/EjZ7FlW0hvJKe1mdlvYTitpSgvxZBzIO
	 RgAnaond5A5rOlxa2EeX6p7CUJAvYlU61B47smN0Uaiv1MFpJcdTKRfk1YTxBuSxtG
	 g2/f8eg6YWdxw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qEDxiJZj6KZu; Fri, 15 Jul 2022 09:24:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9201441841;
	Fri, 15 Jul 2022 09:24:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9201441841
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7FCD61BF25F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 09:24:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 56888848D9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 09:24:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 56888848D9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id da17dPdhYBuA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Jul 2022 09:24:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4000184893
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4000184893
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Jul 2022 09:24:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="286484742"
X-IronPort-AV: E=Sophos;i="5.92,273,1650956400"; d="scan'208";a="286484742"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 02:24:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,273,1650956400"; d="scan'208";a="623789678"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 15 Jul 2022 02:24:22 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 15 Jul 2022 02:24:22 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 15 Jul 2022 02:24:21 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 15 Jul 2022 02:24:21 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 15 Jul 2022 02:24:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YohCFFQyJ1Z8CGnJfJGHxkncIqCH+N6a6k3f4dbgo8xfDFfBkIVYAj3TMDQ71BHZMkKaa3n6GM9RA7FssXf+BjR/LJ4BaHeN2GWDU1oafSwzDap9yT+RIX++LTsNbqjSN4T+oHbHHhTa4Mrh0LUDE4oy9fYhRDIBc9v1ITw+MFb1ph1hD+Hs12xFM6KcdjcoI7Qw+eLkA03NWACkCBsld85Muz098RWybf4T6asH/dqcnXFekCfYjzZJkaqQFaqg1tD3WXFO0pHqILCQdXW0XuHVdwEvvAuoaZvkq0E4TG5tczlWZvCKFcZoP5+DQszB9S6Sbf1YCgNUrI8JjlMfuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=elx513LM8BAEuT7mQqh4nKSC3yM6DT5mbuwe9369mV8=;
 b=EdF+kcLqT3lu5tsmG+DWwNbAoOo8Ae8kpGxUhTkxtz1lIlDckKFbBNeEhoNdgcDm9a3QwaxT1err8CmcdWaH3Lc0BYtD6nPoGRqrDsIK59pkk1UadMB+p9CWS+AElyLz7Zts+o4P1D5Lbv58cJ65P6WKt4WjpI/1lDqs+6kBo+sOlx14oxnw2tokYBk0yAWVS9Q7oTmeaxH+x76ZgbwwnhLI7vXO53MrexJKvLuvmY4ZvYHA8LKX4cVvwDapKoLKJDwfgKJQvvu8gLhoca41wDv/C8WPyJ0bgKFkS6m0cjxfLiky9KFHoI3TG2Oj47o60R4CGY5ppmxotFYGpbwfXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB1624.namprd11.prod.outlook.com (2603:10b6:910:8::12)
 by SJ1PR11MB6226.namprd11.prod.outlook.com (2603:10b6:a03:45b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.26; Fri, 15 Jul
 2022 09:24:12 +0000
Received: from CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6]) by CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6%12]) with mapi id 15.20.5417.026; Fri, 15 Jul
 2022 09:24:12 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "Skajewski, PiotrX" <piotrx.skajewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v4] ixgbe: Add locking to prevent
 panic when setting sriov_numvfs to zero
Thread-Index: AQHYkFm1h1YQ+lzMz0iN/PnB+HpULq1/OGdQ
Date: Fri, 15 Jul 2022 09:24:12 +0000
Message-ID: <CY4PR11MB16243D85FA77D5E0B25D482EE68B9@CY4PR11MB1624.namprd11.prod.outlook.com>
References: <20220705102205.25511-1-piotrx.skajewski@intel.com>
In-Reply-To: <20220705102205.25511-1-piotrx.skajewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 236f0fd6-ee3f-40f9-e43d-08da6643c77d
x-ms-traffictypediagnostic: SJ1PR11MB6226:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MvrSSMAQOzsmou1TPT/SBWnX/6pUmP3w9jyaHhMIi1ucyNmFfJ3lCLKvgoUybbRVbPA3fhJa5DWvCcovmEDJE5nNzl6TV8fa9KVvbo+/Yvgb+5okm3UKueHfU3bA/ZBO2jhHYXvNzEHrucArylG5XZo9TfqsGt79bfeXB3I/d+KZJJOJF2epIk7T0ujvCyzN7nYs1jFA/FK+uasAh6z/fMsAqRGPcP7Vmte+hOQ6thWpEVFPf/BM+OhOJ9kjdSBNYmxIzy+FT+66zRgI8UMzF+IiJdikVh1Qi/9iN/MZSXcdTnoV89dPYpw+v1JyItFAMWjRJrl5wHuqlPhsfJHYYH0g5pBdoO9YsdMfINYyiIdM7EKU4ha59bNDuxtQjks7yrsHSCPO0ESCdwmDyxlthM0P5Ek5fLnmBWKt/acgDx3HP0ys5yJsQdnnjD3hheysYl/SgfqunQhTslb3ZDnXSg/RHcdfgUoAS5XTiPJzPmEu4q553joFiqHiRiorWpuqpyW3DW0jNWzsiuX3q7rj8xEkQTbMswYu36EGfPuY42o5iW4wPPIgYlg2UkEuUFlDcUkkoYFpeoMOAoL5RxGes6V+FUa2nSlWK5Yur+TQAnF9yGPGKjjrAE6bSWIWCb5c70pmJ1WY3Cy+AeADbNRhZZP3107/ihYkx+F8HZD6ajdFxnrCmJf2LbSLuAcac5Be1FcIqk2LYcp9xuQ6UAqaJ1WaFDmcHudolqlGFsk2YOJd3wQ/spLTRWAkXwFgrROvfAQiY+4YNVbZLJ5ezvue0bBOWj3BmCB7fNwYZeCWVUh+fyyPqw8QZ5OPknmfBNE5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(396003)(346002)(136003)(366004)(376002)(478600001)(66476007)(66446008)(186003)(76116006)(8676002)(66946007)(38100700002)(64756008)(8936002)(4326008)(122000001)(71200400001)(82960400001)(83380400001)(41300700001)(26005)(6506007)(53546011)(66556008)(7696005)(2906002)(54906003)(5660300002)(110136005)(52536014)(38070700005)(86362001)(55016003)(316002)(33656002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zeeTCgKAloLMbrN8EWe1cRvK9El93Ss0ebAx0o/BJxsr8o2CM5o7Rh3nV4HQ?=
 =?us-ascii?Q?V8htjS28Exn43LGUuhmqMPaRTxYkLR4x7n0sGHEDsPs9eoog5iRrw66YSVU7?=
 =?us-ascii?Q?Mazq726HWH98fhSCFsSNB56lEN2BwLZuIPAvmh8EyCoHEG6QHOzQof/dk3Ll?=
 =?us-ascii?Q?+LlK5/d9z6RO/GFCCvfRdZkoPdGJK7+dHNTWK7+gFGGzfXUFPqvkcyzuM5eY?=
 =?us-ascii?Q?DTcibOCe6oxOdSQY3l7U/Zq1wWbSfI8jZtnRpaUxO/7BAtopVTsHipPXk4jt?=
 =?us-ascii?Q?WjCSLUtGH3O8+xwPFHhF3D8On0uSUjYzIk1sgZ+RLF572moWHiDYx8H9Hpt3?=
 =?us-ascii?Q?61/O2r1kUDlwBg9MHKHujPidcJO2q2BsPnGEpHwerZuXiSPEOQ0taahY+6s2?=
 =?us-ascii?Q?Ig1f+KOI6d9rZExifrQSJMepxdsJycDKur4af2IKTwVYO/KduUzqn3V2Obqj?=
 =?us-ascii?Q?bqZL36Vcgd5YPmnA9679dQyNKJY9NVrh4O/aEKenavfAF8TzN9Rt+Jug5mUL?=
 =?us-ascii?Q?gs56+QKqE8SuC+AG/QHOTeWb6eGcE/gTp3aDALbjCSL7LuAkNv6p+G669X6A?=
 =?us-ascii?Q?nj+CkwF4aBOsvXnFM2Bac3G++BXr9tzUcX4NSpo9MG0+wH0Waaqtyy6udxdM?=
 =?us-ascii?Q?zaQXUp1SBugKiOxYWQ4VuHkpETeMb2S5hQyqBmPTgzDhpMhrrJQjplqmDptR?=
 =?us-ascii?Q?wyul3HOEZ894ifbcZSZDDI4mDwJ0ePIx43Nwh+6bd+t6Huy68ZMHNmgV8DIO?=
 =?us-ascii?Q?E0Nz00BZRbVesTx4jbnhgOmmFds1vLe9TJ0De91AV16lVeLkjFMjhJ5GFJ/j?=
 =?us-ascii?Q?Ij1prfipA3fc45KJLF+UzbdNssM3MOU/9EEvUfGGFl7Hrrf7srI2J4Vj5I3w?=
 =?us-ascii?Q?kwf37WmRI1fxqFbIkGNDYmxgZQVV+4FMAF/ee05Az+QHVu7yfg6ATx6AD5OI?=
 =?us-ascii?Q?eoufc5IwIyyZmpHlL1f5z1hhPU7tvOGiByOa9sY6Jl5Ty2A2wXxi1YsYm3kD?=
 =?us-ascii?Q?W+KZ8JAEymwY9xFu+MFezP4T1BfhbhQW6bs4ulerva9VDTXYrsWyC5bk6dD4?=
 =?us-ascii?Q?4oGnmMTY/aTeZ67MvYFAK75b4Bsr43kjf38oicxIZG3Ch8K1MpS1wKDte0px?=
 =?us-ascii?Q?neQ/gNpCV1Op/noivPmDHWppgX7I357qWULBVzBqm9bUQXFVuMFLPrNmAPPz?=
 =?us-ascii?Q?NRFB8Ip2IEWPN79hL+ZUEudNCK5iVSyN0RsTovdLtVMNdXKLBooFlisn2By5?=
 =?us-ascii?Q?ci/GcUxeIQgWyx8WZoYTeKWiW98qlvtGlw1llAunm8BfXhcKVhVWb9Sr06ku?=
 =?us-ascii?Q?/uN88tWhaBQRqHR701ODCebmAhvdcywQ+YxqBprOY6UqpzIZHYjgUn0u/6dj?=
 =?us-ascii?Q?Zsl+oBAR26XS9tdP7sNRYJIhui2eOwRar0DR9UHJ1NIz0DQtrNQ/vTEVL81f?=
 =?us-ascii?Q?G0anuW+98JmHjVT/JgPLePeLiu6vxVsGsul4CIRyhSQJbIGwKr5qDUqAP85e?=
 =?us-ascii?Q?kH70Agg9QKuBKWeUR3UtEh+97WIkLU/VvWHUC5yjXEhF7usyO2X1QzjQ1LMY?=
 =?us-ascii?Q?l9UrbmcsIBKZgZFx/+l0oe4+faS6blgZ3ejTLnpo?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 236f0fd6-ee3f-40f9-e43d-08da6643c77d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2022 09:24:12.1479 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7kk4V2It7MHlveiiR24iyBklSlTOtQVZlRtsGZ3PobUmRXEmvijfYJwt0e7sgFK80EVmxm6qfkGwKg6YYDKVLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6226
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657877073; x=1689413073;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qXWJQLEaM4DxSNmcXSm1Nzuw7UmAvKjm0QOpLWK4/lA=;
 b=E0f0jfwfHRs7U0sNUJrVoo//IRZkfG5zt84MHgUN+XScEBr8hUGA8kkf
 +NW4IA+iz7UGjQB6Wvs/2kwxgRUXzqL4CwhmdxgQlwZmwvxYKNlRxS0YG
 ygdYZJqyTp5dkHZYte+YdF30xCjeP+k/32CFEuqOpS6qKH6Z9+8KGdglN
 YBCNLNNpDEjdFbSgr2VHdPT2rK/aHh33eayXAkBqLGU9h/V+BuuIAFe0r
 SzTmVn30wEfg2k42+qBEg5V/MClF2T5aeWBQhr5vK0GI3i23f5l+jiX0Q
 6t14KEQC+foaJ9tgWUdsvqmwr81nb4CifBJTheZk1XulFGMJxNx2e6SV2
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E0f0jfwf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4] ixgbe: Add locking to prevent
 panic when setting sriov_numvfs to zero
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
Cc: "kuba@kernel.org" <kuba@kernel.org>, "Skajewski,
 PiotrX" <piotrx.skajewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Piotr Skajewski
Sent: wtorek, 5 lipca 2022 12:22
To: intel-wired-lan@lists.osuosl.org
Cc: Skajewski, PiotrX <piotrx.skajewski@intel.com>; kuba@kernel.org
Subject: [Intel-wired-lan] [PATCH net v4] ixgbe: Add locking to prevent panic when setting sriov_numvfs to zero

It is possible to disable VFs while the PF driver is processing requests from the VF driver.  This can result in a panic.

BUG: unable to handle kernel paging request at 000000000000106c PGD 0 P4D 0
Oops: 0000 [#1] SMP NOPTI
CPU: 8 PID: 0 Comm: swapper/8 Kdump: loaded Tainted: G I      --------- -
Hardware name: Dell Inc. PowerEdge R740/06WXJT, BIOS 2.8.2 08/27/2020
RIP: 0010:ixgbe_msg_task+0x4c8/0x1690 [ixgbe]
Code: 00 00 48 8d 04 40 48 c1 e0 05 89 7c 24 24 89 fd 48 89 44 24 10 83 ff
01 0f 84 b8 04 00 00 4c 8b 64 24 10 4d 03 a5 48 22 00 00 <41> 80 7c 24 4c
00 0f 84 8a 03 00 00 0f b7 c7 83 f8 08 0f 84 8f 0a
RSP: 0018:ffffb337869f8df8 EFLAGS: 00010002
RAX: 0000000000001020 RBX: 0000000000000000 RCX: 000000000000002b
RDX: 0000000000000002 RSI: 0000000000000008 RDI: 0000000000000006
RBP: 0000000000000006 R08: 0000000000000002 R09: 0000000000029780
R10: 00006957d8f42832 R11: 0000000000000000 R12: 0000000000001020
R13: ffff8a00e8978ac0 R14: 000000000000002b R15: ffff8a00e8979c80
FS:  0000000000000000(0000) GS:ffff8a07dfd00000(0000) knlGS:00000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 000000000000106c CR3: 0000000063e10004 CR4: 00000000007726e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
PKRU: 55555554
Call Trace:
 <IRQ>
 ? ttwu_do_wakeup+0x19/0x140
 ? try_to_wake_up+0x1cd/0x550
 ? ixgbevf_update_xcast_mode+0x71/0xc0 [ixgbevf]
 ixgbe_msix_other+0x17e/0x310 [ixgbe]
 __handle_irq_event_percpu+0x40/0x180
 handle_irq_event_percpu+0x30/0x80
 handle_irq_event+0x36/0x53
 handle_edge_irq+0x82/0x190
 handle_irq+0x1c/0x30
 do_IRQ+0x49/0xd0
 common_interrupt+0xf/0xf

This can be eventually be reproduced with the following script:

while :
do
    echo 63 > /sys/class/net/<devname>/device/sriov_numvfs
    sleep 1
    echo 0 > /sys/class/net/<devname>/device/sriov_numvfs
    sleep 1
done

Add lock when disabling SR-IOV to prevent process VF mailbox communication.

Fixes: d773d1310625 ("ixgbe: Fix memory leak when SR-IOV VFs are direct assigned")
Signed-off-by: Piotr Skajewski <piotrx.skajewski@intel.com>
---
changes in v2:
    - replace type spin_lock_bh to spin_lock changes in v3:
    - replace type spin_lock to spin_lock_irqsave changes in v4:
    - hold the lock only around adapter->num_vf instead adapter->vfinfo

 drivers/net/ethernet/intel/ixgbe/ixgbe.h       | 1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c  | 3 +++  drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c | 6 ++++++
 3 files changed, 10 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 921a4d977d65..8813b4dd6872 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h

Tested-by: Marek Szlosek <marek.szlosek@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
