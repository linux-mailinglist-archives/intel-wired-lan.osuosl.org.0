Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D2B6CD16F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 07:10:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A952E41BDB;
	Wed, 29 Mar 2023 05:10:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A952E41BDB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680066626;
	bh=GCCrGUOANCGNwAc2RijkWYY5dnyegwA4bBizXDWxEuU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yPKcPTKv/3Lqn/nh7kBHw1zBMDlKEoAHKswUCOHSdNekLVTVx4nQbJu8kys07Y3SC
	 76q+ZrQsgFs6e7MjI37FzRfccynRlR3kbano5dWVK2W8gDpXk4B8dJFF08NyrQIOOW
	 R08lm4K/NF51VLoj/a9QWhP4z9hpjbBm5t+0dUNc2TMmopRR4RelRiPPsAWDXSo8qA
	 9ZydOC4AGCztOZ2o+xybuRRFp2u5S3g5rM0yCXc52ykXKnDF7IhBUBzCRJyncWaY4R
	 D+x7jfgKbiau3IOS7i314Jawb02RNeA4koweRpGHry2z7TVnpnO24ErFLaoCbXlnSJ
	 Jz+0RD3ED53Jg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5kmNO8Fyce52; Wed, 29 Mar 2023 05:10:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 36CCB41BD8;
	Wed, 29 Mar 2023 05:10:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36CCB41BD8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A55051BF364
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 05:10:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C2E640569
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 05:10:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C2E640569
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dBpsPVEtpb2K for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Mar 2023 05:10:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 57687402B1
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 57687402B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Mar 2023 05:10:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="321178839"
X-IronPort-AV: E=Sophos;i="5.98,299,1673942400"; d="scan'208";a="321178839"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 22:10:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="827738722"
X-IronPort-AV: E=Sophos;i="5.98,299,1673942400"; d="scan'208";a="827738722"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 28 Mar 2023 22:10:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 28 Mar 2023 22:10:16 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 28 Mar 2023 22:10:16 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 28 Mar 2023 22:10:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nfJAomPIhevDOSx6Y1zu4xzMQPBD5VCPQ70qPi3RvBUP6QxdmmYomld+sLk8DdzrQRrIp2IoWeFRxm19urJFvYEw6vsejO383cwTSOrR4fsNPTDYHl5MPuU1yAoBYWl9kiJWsmvPzjHP1d5MD4y3r4fGzOBcqOYAaVGfU6TlZU2L6UzX7bp5muFOvJPVc0SICGO9VTiCJxwD+a15bVOyczqQZEVkEl+zYiL24CdsHEE3hgpb3yKK5o8sctrIuNrxWsLu5p3wXKIJm4cQ3vO95qvNXuXTltLTERtax/ESNynheeZAPeQHhkbU86rXGIvIiT04K4gajsXc57gozvNJ5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2q0782FZjvrQjitukZlbAQSYo5S1+vmd3Ly4wBpzZfg=;
 b=WKbtwujWRJy3OAcSdxRVn0nG8PUYAIOJBd3dPqISiyULGracDSYy1wYnFiNZkVnnp4+qiOAP7NlBAqASOX2DF0kjekh4atnaVDLpDQHFfS5WYN4Au8D1fXp4pL6ucLh72nesgmvmIDy/qnQ2myCBJsfyk8PcMHWaVFjqC1Dg3CUkLU8sG4KczyaAYPxWzC6pwFqDA3i5jVa599dygUF+f5JFrdxD1V/0AX8v8stmzi16NfeqelPxw483k/8ypKVyyMhnM6qZYYJWXyOxLC32uQbfdLQvIuYSxbVGMEWnWUibFYpK+QQdzj6t5NftvFmaivqN/8e7qSZjJVANsBxlDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by CY8PR11MB6817.namprd11.prod.outlook.com (2603:10b6:930:63::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.28; Wed, 29 Mar
 2023 05:10:09 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::7f59:894f:aa3:25c]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::7f59:894f:aa3:25c%9]) with mapi id 15.20.6222.033; Wed, 29 Mar 2023
 05:10:08 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: fix passing tainted
 expression to kzalloc()
Thread-Index: AQHZYTfrNMpvQw7lZUyzzihw/MkgWq8QDa+AgAEoPHA=
Date: Wed, 29 Mar 2023 05:10:08 +0000
Message-ID: <SJ0PR11MB58669419ECF3CEA5ED3BB466E5899@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20230328054111.803638-1-aleksandr.loktionov@intel.com>
 <2c1aeff8-4ed6-4971-5505-8df0da32d1ce@molgen.mpg.de>
In-Reply-To: <2c1aeff8-4ed6-4971-5505-8df0da32d1ce@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|CY8PR11MB6817:EE_
x-ms-office365-filtering-correlation-id: dfb0c79c-21f5-49ea-8d63-08db3013dded
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bPmrLDyscrou0vD6caQRdaax6kQ+rrsLUwjQ2lgtFwz6TL2C5qe5YDXrgjliLTV+sJm17oF2w0fuQv3YMjdKKBYk+koU9VDpCIyrB7AwtafozV11PLqdmVbWZLTPCU/+fPNpBuTh/z13JLGnetxc0wYz2Lg+4uvNBi3gd1BvQfdylM+ZjrOXV19xsuOhFfqhrZoU8fRJ012EqC/4Q0UfV6GASK/i5jgzUcJdbOLDmHznVaHaZpA40LaKSu+LWnOA/hkM/XEHXkkEa6Rp/g6Ukou9545WY7+pcKlMBUkY1csqBsGNT2YUvLR5Z32bzSTd62C4GVlZ8LN9Mp4JYa2rZpF4VFfZ+5McOCqalXoxYGLs7lgucjzLCEVGaki+E9mT6BiH2PwKVyTsulB6k4VLTE4xkWLxeqt0SCvFyirtYj2MkbzfF7F1JLPej4a5TFpVDyW5/UFx5wdXexZrbhpawXxH9MyEl7NpnGgy0qEVLKykk7+xfD8Yy+wEfRNBqKc07iQoYYq1vJKuqmbgol4/upUd4Y7Deoppg42B5kxOeXJblXhCAiz5vU2bkB6DdPV1la+/g/Kqt2b+Ibv2dLiUrES+oJ9ql+DjtWrjjyj5d/6yDCS8vQDe158+bXQTyPsh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(396003)(346002)(136003)(376002)(451199021)(26005)(186003)(6506007)(53546011)(9686003)(83380400001)(107886003)(7696005)(478600001)(76116006)(54906003)(66946007)(71200400001)(66476007)(316002)(52536014)(122000001)(64756008)(8676002)(6916009)(66556008)(4326008)(66446008)(41300700001)(82960400001)(2906002)(8936002)(5660300002)(33656002)(38100700002)(38070700005)(86362001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?azQ5NHNGZmJ4aWtieGc4VXcwQ1NTM3ZmSUZVYkNNRU5NTkpDRzkrMExwdFN1?=
 =?utf-8?B?eHVtcXRrakdRS1NTUHYvTjZmN3J6bzR4QXQ0WVRYeEhvTEpLUUU1QW9XSDBL?=
 =?utf-8?B?OE42NHRnTTh0T3FUUW5sV3k4K2RyamlKSlRPeXNKaE1ldUZpT3dHejlNa05k?=
 =?utf-8?B?MDk4cCt4UUtza1MvaWpIZjhjVzNzdHZ2TG91bmFEck16RURQb1UzWUl5ZWJB?=
 =?utf-8?B?VlhFSXF5SzZSOEIxWVhYNGVRanhzOVlFK2dwaURHb1VVWWsrQzFIZHo1akFi?=
 =?utf-8?B?YllqMVdxWmxmdlNDMGZzRVRsSzN2RndGUFEwSUFLcHR0N0pkV1FYWFZiM0Fs?=
 =?utf-8?B?RWg2cEtOaDEvcDllWWlkc1JOT2F4TUtrejRTMFc5cjN4QVhpOVB3YmdpZXZm?=
 =?utf-8?B?SzlUM0FJOHRtSDJMaUJpYWpUT2R1QzZabzVQd09PRU84MXkveDJjVlBWZXZX?=
 =?utf-8?B?MHd3TnBJb2Ntb21iRjk4RGp4KzNMcDl4dXNCMzlYVTZwNHp4M2lERmV3bUFi?=
 =?utf-8?B?b3FIL3hqbCtFc0RoaUpIalZjYTB3OGNvNDlNSzRXSmFhQUxsSmRYZ1l6bzFz?=
 =?utf-8?B?bzB5RmszRGg4SE45TGllbGYwK2R4bUJybDFhQW9XVG9OVE5vbzgvTXo0SGNl?=
 =?utf-8?B?Rzd1b3VaeHd4ZXRsYjJrdnl3TWdKSXpxNk1xZHYxUUpYN3ROU1BDaDRMTk5j?=
 =?utf-8?B?OFhLa0FJVWkrQ2J3Nm5ZZk16dGxmRVUwWFBVb0NPdHFKVGlrT2doeG9pYWJR?=
 =?utf-8?B?MitxT0VuMzB4bU9NbmhCb0lHZGNzU1RWUEU5SUpUZ2FRckZ5VUI2NWxsTHhj?=
 =?utf-8?B?K3BQbFhUcERHaG5iOFAzSTA4K2xoVU9pUmJ2YzBNeXJQdi82TVdoZkk3VG1z?=
 =?utf-8?B?amlrMmN2c3h0NER2aEsyQTA3R0tBSllDbTNqUGZZcGdYKzg5bzlLa2pOa0sx?=
 =?utf-8?B?ajNrT2lVaU0wYVErMERqaklLUjhITnRUWTZLNEpJeEs2QlkzaUtlRXpUVVlB?=
 =?utf-8?B?RVFFYXk0QTJjM3RuejhibHhTdXpGR2tKWStIK004d3Yxb01JVnh6M1MzMkpw?=
 =?utf-8?B?bENIN21JMnZaemQvOUR6UU5DM29hVmpCaDZuUnBqaytUNmVYRUcrSXJGdmEy?=
 =?utf-8?B?b0xLSFdJLzRJcUNOMjIzNFhMWlBsZ2hqNlpCU1B5V2F6MUNxRk5UQ1VZT2t2?=
 =?utf-8?B?eGJ4ZU96UEJLU3lkcm0zZk5vem40TW1qWUl4QzJEUkNSS0I2ZXlHdG5kb3hV?=
 =?utf-8?B?REZTbzA4bW5hUU5IL0pnL2M1YVE0Mkg0MGVKV21LUGU5RkdDZVAxWmtvdGVm?=
 =?utf-8?B?Mk9RQlJtMVlNaTM2eGtWV1pUTTJFOHIycXZZeXhRSXFXN1NTNmpaTmVVZHpv?=
 =?utf-8?B?dWxqY3VJUng4MkcvNzJyeEVQNlJyZ0N2T2hkRndHTEp6L3hyRGhPcFZvME1W?=
 =?utf-8?B?aXJrRzRhRXNxcXFTU0MxcFp5WVRTZVhRZXV1ZjAxYjZGMlNKT2hjNlUxT3Nw?=
 =?utf-8?B?eGQ5VHY0RjFuc2dzVHVRVERkNDRTSUxqTlZVOXJCMmJHMTJ3VkhGQWFEclQ0?=
 =?utf-8?B?SUVRVW4rRWpuY2ljZ1c5MksvWWo2ejFrQTYwUGFtNUQvbGkyc01PRmpaSnFN?=
 =?utf-8?B?OXlKZXc1RDlmTFhHVnJzS25XY2dUK2oyeVRINVBIUkNwRjVPVlFBbWdsUEo5?=
 =?utf-8?B?RjU4UGJCb0wrekpWMDJpNUhzTHNRM29RVERvY2VQbGhYQTZwU2N5RXM2bDVR?=
 =?utf-8?B?OG1pWis2elUwbmp0ZTR6R1hacnZNeFN2aWh6aGo3eVFJYzhKb0JvMll0N1Jl?=
 =?utf-8?B?ejJKdmZSQTdmWUNYUDRnRFdyNVFRWUYrdnc1L1g3b056eDFRczdSalJ3WnBI?=
 =?utf-8?B?ZGlMTFNBR0VtQm96MDVpdGExa3ZmbWtON1FpM1NhL3MwQzZnczZIUHNiRDBU?=
 =?utf-8?B?RXlwazBLNVV4V2ovcTNhdW1CN1JCZE40NzNrTXR5YjdnNndoUFdDWitwL3lk?=
 =?utf-8?B?d2YvdmF3VU8rYmo4czZveTlZNmt2czQvdGlRWjlDTkpoUkxNNDF4K1RMS2k1?=
 =?utf-8?B?bVZjM0QzZXIvMkZ3U1EvK2dWUU4zNnBKUkdhOFQ0YUliNGoyalplSHFPOEcr?=
 =?utf-8?B?anpIdVNWMVZIOVNoZVI1bVRncFBjMFdVYS83ai9UTFFWN2t0NG1MZXpYM2pR?=
 =?utf-8?B?TWc9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfb0c79c-21f5-49ea-8d63-08db3013dded
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2023 05:10:08.8770 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5TD0xn/+WGB17L6tUmcajZsa4fW0AbORWdPYnFFNC0tPmku0ekibJsM/bIR+ad26pywv0E7cArP0HMNeYdSlCvvNujLlFb/KjnCcMDcXIxc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6817
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680066618; x=1711602618;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2q0782FZjvrQjitukZlbAQSYo5S1+vmd3Ly4wBpzZfg=;
 b=HOEOnK9HLxeJHHXHCBbJT+dcO/fldy6RMWNNF8mVmij6Wg9ref2yGjAx
 3nswMt7MQQZNTM9WlbJb4x4k80mzFM4bo0TdB10LOjO0m9oSxQEQmzEf/
 5dIrnplUK9Dd+TaXEBSY8nswB23J03eXcR29UsswRKuFm4NuYjzyGiZKx
 iaQ/gj0YZcagcsYEG7LAjjqBl27rzaIruNRYWOuneFHbc02debVI53mrz
 gyRaacphjwR7cwpZegfYwzMyFr8SKblRkBvqf8599nJEtSd1ADnlQnvHm
 gpWKWR9wi96WHW4noJHghDV8komBJjeriC4My1cHOOmKg4+bgtlCnXdek
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HOEOnK9H
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: fix passing tainted
 expression to kzalloc()
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Goo day Paul

-----Original Message-----
From: Paul Menzel <pmenzel@molgen.mpg.de> 
Sent: Tuesday, March 28, 2023 1:26 PM
To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: fix passing tainted expression to kzalloc()

Dear Aleksandr,


Thank you for your patch.

Am 28.03.23 um 07:41 schrieb Loktionov, Aleksandr:
> From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
> Add buff_size limit of 1280 bytes for user input value.

Why did you choose 1280 bytes and not some other number?


Limit of 1280 bytes is not my decision, please see the comment in the sources.
As it says 1280 is just big enough.

For the commit message summary/title you could use:

i40e: Limit expression passed to kzalloc() to 1280 bytes

I see your point, but can this patch be accepted as it?
Thank you

Alex

> Fixes: f1143c4b0f60 ("i40e: Expose AQ debugfs hooks")
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> index c9dcd6d..b10d00d 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> @@ -1356,7 +1356,7 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
>   			goto command_write_done;
>   		}
>   		/* Just stub a buffer big enough in case user messed up */
> -		if (buffer_len == 0)
> +		if (buffer_len == 0 || buffer_len > 1280)
>   			buffer_len = 1280;
>   
>   		buff = kzalloc(buffer_len, GFP_KERNEL);


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
