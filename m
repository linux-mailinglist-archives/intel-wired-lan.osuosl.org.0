Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B23AC8964A2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Apr 2024 08:37:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65FD081FA2;
	Wed,  3 Apr 2024 06:37:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gALMn9NdveW7; Wed,  3 Apr 2024 06:37:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9BDF81F9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712126247;
	bh=NDzsvFSMkTtmglrLg39+kZGci0kBa8fBrNIkH5/gesE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2d4VkE9H4jC85oBWgHwwbFK8tYTXfyTCiS9jHLmxB4hoyMEX97aQ2SKXbxlxhd1I0
	 xrNJKhXYGMsQEW0g8mJggw1I1YrixzlV8113srmTO0H1GXgr9t6beWeJXaobz931uC
	 IMiVGu5lMB2tIGKjH7arX2orWrYGw0xFLQUfioh8t/ppEA1/KlyVN9SRygmh2GYEC2
	 EBvSeRp7Qs5QDt0RWOP3v1RixGWd0SMebKco30G8P6TLvq+Ikcy5eoqlaHSKoAv68E
	 G+tob+zmrZod2sky/B0e2Xq4ELDGNfzr15QemmqI/5bvt8tQWrfOYRcnIgoqSvlJ6Z
	 I7g3+AHxia1Pg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9BDF81F9E;
	Wed,  3 Apr 2024 06:37:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1459E1BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 06:37:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0DB11410E1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 06:37:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P1of3Ew5277d for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Apr 2024 06:37:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 41E9F40964
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41E9F40964
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 41E9F40964
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Apr 2024 06:37:18 +0000 (UTC)
X-CSE-ConnectionGUID: qcDcqgZPQdOME6jTLeQmiA==
X-CSE-MsgGUID: RtOdMH2WRKKVfq8dfN6R9g==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7181552"
X-IronPort-AV: E=Sophos;i="6.07,176,1708416000"; 
   d="scan'208";a="7181552"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 23:37:17 -0700
X-CSE-ConnectionGUID: VvjgWtbaRDGj6S45VurU6A==
X-CSE-MsgGUID: nJj4rjq9StyPZeO2+v2NAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,176,1708416000"; d="scan'208";a="49304037"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Apr 2024 23:37:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 2 Apr 2024 23:37:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 2 Apr 2024 23:37:16 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 2 Apr 2024 23:37:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=inosTLn4wcfwPwZawLe2gleFPLqpiHLtsPl1Pd7WWwOriqXsuPwMq5a6h5xQzxGAyCZCfeb4lI4XeZm9yBmraHyndtCg0HOFA713UTHi6wQ+aNJ5ZwKNTJe65XtANSuQ5ufA0rhcTCHFMeKPeFDMbwUNR3uGtF0qS13YsIDYCsPgi9vylWMlqr5kKj34Vo5LgpaXbjQbNlotNVUH5P1zDLljArP6GzAuZYehbk2KB470d9hqMvTzsW7c6F1jxTrg51evMaqoP+gIxc22a48YYJ//GfND971nTJNsM+N5sHYySaoIo8Mh41cSYW4bmk1CL8B0Z7hmtgYS69617mtETg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NDzsvFSMkTtmglrLg39+kZGci0kBa8fBrNIkH5/gesE=;
 b=KILUuvtvlvOtzPhz9ES+XXrZGnr3UdJZUz/dcDbenuTeLo9SsRBH3+T6gpD6cTPwZE51vkFSETz6wUadCjIUZWGrMeOoqyGAZizZ6LZb/zrgbFnr2wE7QW5zLcR5fqDlC9kDysaHNVf/PQwWkMj5lXHpjCa/4q/u4Je0Qp4dgb/wncmVSwrNF60xyFSeutThtLW2DdktaPO8V69MlNpvj34EXsW3EirLzxD9u8aWVY9ci523Jyz2NhTImDUC2KhDb7XvcOBCfgmis2fJEdINB2qqpI+2NQJyM/FzDslSolrfhkNwKnvY/uZf7LRbwuFZwTzISiF9WtvpeuGkeKrt3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by DM4PR11MB5279.namprd11.prod.outlook.com (2603:10b6:5:38a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Wed, 3 Apr
 2024 06:37:14 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::aaf8:95c2:2724:9688]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::aaf8:95c2:2724:9688%6]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 06:37:14 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4] ice: Reset VF on Tx MDD
 event
Thread-Index: AQHahR4CrNukXglgdUuAzZFf4xiQDbFWF2nw
Date: Wed, 3 Apr 2024 06:37:14 +0000
Message-ID: <SJ0PR11MB58667566B779717F962B9871E53D2@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20240402165221.11669-1-marcin.szycik@linux.intel.com>
In-Reply-To: <20240402165221.11669-1-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|DM4PR11MB5279:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bTZtLuQlmS6wbl25yA1RP9R1TGCTfrkLWkXVTLBR0Bdq65s5MXPOHKkw3OlGFe/xW1CwuEZatSt728xVTQBRm+/up+S9FzKLXVwifqxMg5GXfX/sUZLOIqhp3gWApXchpxUf4pbvibVbkHcsDV7thdzuTRzEBkldyyJs9IfPKol1Ihzy3x9n+Jka2Y+xkjA234XUfYg5prI32D3wMQxA6//jjo+W4NGPvKqM57Eu0gFNnxzpwYPGK0nNMyxC50X7gRAfWLzykfSvMh8l6CN5ccGpiGJ2P2xnfu30+IB4IwmQ3QHix23P663eHFT+seh4jaRArBBptnX6PpKKbux1Inm/VCVWrmN6aT9EbrvqPClpJzoYjupOeKYky+JMeaIwuzZ2MMRzQmxsXxQsZwnUlCMNmqcX1Fccq1r/YXsY1A3uyq7FqHzx6Tf6oVYs8uOxnSS2h9FNjF0SsDwzadGBE107ctq8nqUyR9Q+G1P8dAAiRo6BMV0iSTku8B0zC/n1VybPq7OIbCqc0YNHtm3vlmIoGW/L0YVnulO2j3zyLkyViBRNA3KcIUNAN7J8CiPmZZLI9iRckSfsViPNl7RmafSByGMUJWunoVB87hQ1XbzICmbe5W6Mg440MWVXyUty
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EIekH6t3ZGCkeJkq5QpmsSkOcv5sTv4GRpvbgo8qYIqdRzyU4t0Up+4YRAM2?=
 =?us-ascii?Q?XXzuQKt9xjGcIribkdiCAnotsnxzT0VhUFZVTYlNsD1ErNo6K44VczBAfzeC?=
 =?us-ascii?Q?YjCIiuYnS+FhqFFL0Kb4WkV2Al8l2uoaA+z179Qu2IBd/OAU3YF9oEvHmZ1A?=
 =?us-ascii?Q?+TcJLE6zQgPSRaRIcmQ+M/OQQqCTkolo/7N4G4jLbGOyQxQe7EXLN1CTcXDv?=
 =?us-ascii?Q?q6Ka6ZcaJCn/bm6HwMesALbPYPRvGNsuD2lAuWIt51nsvb6CmoWjmecsMQK0?=
 =?us-ascii?Q?dE1tyiHTk1Dhak3Kmp9YUPMjaKmA3G5w8/IgJ7GWHT3DYjTt+JeEjCWxJNco?=
 =?us-ascii?Q?sscnQ2cAwdYC4oPJDRW24vkx+cTjkvtLUIKgdK07iiKx/2uy/Tu+DOWzZ4LZ?=
 =?us-ascii?Q?+ik8UgCGgP3XqmT/fmeLchRqlRgfRAXYyllKpLrC78cSlb066/kBXLhl2+Qp?=
 =?us-ascii?Q?S1vkE6mFU9SsAa5r/eeBD85Otn6a/N9F45Tm0tYlgLnLF65NOx1yBAKfg/SP?=
 =?us-ascii?Q?YD4FYmsuRFuqN82Go9wiaBdlOXDsPgAzUet+8BcHIDTA+GcznGOih+S0W3LR?=
 =?us-ascii?Q?l4jNHYBlYgSRxeKsoQzQ4VYs7eiVsOtII2hl3w4Wl1zyFkQQ0bvaNl0zhDfT?=
 =?us-ascii?Q?D2ruFfWGyWWY+yc18GcheHFcyiBjZwYLwByngC9gCnG3PpasgWdGpjVPiLrM?=
 =?us-ascii?Q?MxZR0oKZrOhks5KkqKcKQZTAmmJjnV/ZlksduUykNB5IqOdAOV1k+qc9R7lp?=
 =?us-ascii?Q?SEqGY8g2XheQpAMB9gDXYri3lfFS8bNfZzefAm6EZ2YxeB09RfMUNaxr2X6D?=
 =?us-ascii?Q?6jkTpO4dzNirh6HXtKevUKmR1vvGuEgPAnPaUlWuSwLNEo5WyJCA4ogSUtdO?=
 =?us-ascii?Q?QFM4V49N/F0nl6TyptfLQS18Pju7XDhjuL6gH13lGI6FDNgqzlBhNGb1EKGq?=
 =?us-ascii?Q?nTQFc5t19vGOlqoCsiSTh2xz+XsKPMJrnAfaQvocVz5+o/Wksztci0LyyFia?=
 =?us-ascii?Q?UVCfX8anCfxG7dZ9TZQjPUgfRAX/+1Ve320ioWSNFqe0fQtdB6FXIFApRk+y?=
 =?us-ascii?Q?pXg3Tl64uiqRDL7aTHy8xLwJsP3x3Uz8oLd0NoE4l4/xY1/swjnfZB0Ba92m?=
 =?us-ascii?Q?GrZgc0Gb96/Kc9X/NTj13qWOKOaLxi+wIBw4nx1OZVXhA4DXBu9Qs2LPJ6ph?=
 =?us-ascii?Q?PEggKZ5JV24JsHuhLDgZMp5HCnClXhuE2RC+USHUVWZByh/0fJTyXs7Okeh5?=
 =?us-ascii?Q?9Ol/pzT4aWJHrFwJTkeUcaxSdIspd6jtB/VvJoRwRoEY+d4+ui7Xkxwy6rPd?=
 =?us-ascii?Q?HaUxrDz9lLab9hGVJ2UA/WfWRY47pRPRqn4lmdlEsdKsP0eZFnLbNSGkJgFp?=
 =?us-ascii?Q?RHdG/s0ywgAsinGlmrzO75e+KStYHb/kZtcLlV1eIaf2vLNC0+odcv8GeIUP?=
 =?us-ascii?Q?HdaAUuk5ixOl3yyjSR0CN/qFUHmwOoZPk5lN35yUYfP2J9yRN0f2vyQbSx52?=
 =?us-ascii?Q?Mzf3z+WVB56lFV7upq/1KCuX55zVZp5AT5KgBtlimQ+UWntZnhnNbIuH7Gdr?=
 =?us-ascii?Q?SXTGXQ/UAWsAXL9xh5vKpsS3tcofL2yFLQeeUvxrkG0yt+BPcq94sy4tziZY?=
 =?us-ascii?Q?Ug=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7b0cd13-3014-4f53-9267-08dc53a87fc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2024 06:37:14.2326 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F1/lwKVUXezLYGhruH+Rbv4oXhXiE/PlNcTbxF4z11GD6mFNp3q5Dz7ku9cCdsZR+lZ+wdYJsqT0XkFabwgBZepROTZis5Y9WF0kclY0SQs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5279
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712126239; x=1743662239;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OOm7PIqoP5U7w44P8k/fC6eWDcvUyjzHHEu+XzpvCFk=;
 b=AnR0QWP54uJi+m+QHQIpW2zRdO2GWfHJ3Vu6iZWhGEN/pGpayovqnox9
 14iSlKaGtg1IqSOnWpMktDpMrBGwf7+byhCmgBhqUV5bRI95kjUkMCMhQ
 jGSyHb00m1OcAG0XlAPzMjKH+UXwwNn7ZLf6lphtBXTx+2YA9Ld+9fgum
 JY55EHdz6DfcuqoG8rUZK+vqWl4X8apdaEddrPrgfhCxhU9+R02Enb2Su
 hl9Ch/sM0otBA0gaLC9vZvIqKihLsQ8kGJ7zZuTirKu7PhqXBL+3U1i9p
 MgmeW3BkvQszl+iZe4ZKIDhJsAhyFjQqWLIQ7JfEQomR6xVy0zQjZcUD6
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AnR0QWP5
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] ice: Reset VF on Tx MDD
 event
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Wang,
 Liang-min" <liang-min.wang@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Chmielewski,
 Pawel" <pawel.chmielewski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On
> Behalf Of Marcin Szycik
> Sent: Tuesday, April 2, 2024 6:52 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Drewek, Wojciech <wojciech.drewek@intel.com>; Wang, Liang-min
> <liang-min.wang@intel.com>; netdev@vger.kernel.org; Chmielewski,
> Pawel <pawel.chmielewski@intel.com>; Marcin Szycik
> <marcin.szycik@linux.intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; horms@kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4] ice: Reset VF on Tx
> MDD event
>=20
Please state in the title explicitly the purpose of the patch:
Do you fix a bug? say fix
Do you add  functionality? say add
Do you refactor? say refactor

> In cases when VF sends malformed packets that are classified as
> malicious, sometimes it causes Tx queue to freeze. This frozen
> queue can be stuck for several minutes being unusable. This
> behavior can be reproduced with a faulty userspace app running on
> VF.
>=20
> When any Malicious Driver Detection event occurs and the mdd-auto-
> reset-vf private flag is set, perform a graceful VF reset to
> quickly bring VF back to operational state. Add a log message to
> notify about the cause of the reset. Add a helper for this to be
> reused for both TX and RX events.
Please describe your changes explicitly:
Do you just add a helper function without adding a new functionality?=20
Do you add functionality?
Do you fix?
Please explain what are the changes in driver behavior and the changes in t=
he driver sources you make.
Thank you=20

> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Co-developed-by: Liang-Min Wang <liang-min.wang@intel.com>
> Signed-off-by: Liang-Min Wang <liang-min.wang@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
> v4: Only perform auto-reset once per VF
> v3 [1]: Only auto reset VF if the mdd-auto-reset-vf flag is set
> v2 [2]: Revert an unneeded formatting change, fix commit message,
> fix a log
>     message with a correct event name
>=20
> [1] https://lore.kernel.org/intel-wired-lan/20240326164455.735739-
> 1-marcin.szycik@linux.intel.com
> [2] https://lore.kernel.org/netdev/20231102155149.2574209-1-
> pawel.chmielewski@intel.com
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c  | 57 +++++++++++++++++-
> ----  drivers/net/ethernet/intel/ice/ice_sriov.c | 25 +++++++---
> drivers/net/ethernet/intel/ice/ice_sriov.h |  2 +
>  3 files changed, 67 insertions(+), 17 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 185c9b13efcf..80bc83f6e1ab 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -1745,6 +1745,39 @@ static void ice_service_timer(struct
> timer_list *t)
>  	ice_service_task_schedule(pf);
>  }
>=20
> +/**
> + * ice_mdd_maybe_reset_vf - reset VF after MDD event
> + * @pf: pointer to the PF structure
> + * @vf: pointer to the VF structure
> + * @reset_vf_tx: whether Tx MDD has occurred
> + * @reset_vf_rx: whether Rx MDD has occurred
> + *
> + * Since the queue can get stuck on VF MDD events, the PF can be
> +configured to
> + * automatically reset the VF by enabling the private ethtool flag
> + * mdd-auto-reset-vf.
> + */
> +static void ice_mdd_maybe_reset_vf(struct ice_pf *pf, struct
> ice_vf *vf,
> +				   bool reset_vf_tx, bool reset_vf_rx) {
> +	struct device *dev =3D ice_pf_to_dev(pf);
> +
> +	if (!test_bit(ICE_FLAG_MDD_AUTO_RESET_VF, pf->flags))
> +		return;
> +
> +	/* VF MDD event counters will be cleared by reset, so print
> the event
> +	 * prior to reset.
> +	 */
> +	if (reset_vf_tx)
> +		ice_print_vf_tx_mdd_event(vf);
> +
> +	if (reset_vf_rx)
> +		ice_print_vf_rx_mdd_event(vf);
> +
> +	dev_info(dev, "PF-to-VF reset on PF %d VF %d due to MDD
> event\n",
> +		 pf->hw.pf_id, vf->vf_id);
> +	ice_reset_vf(vf, ICE_VF_RESET_NOTIFY | ICE_VF_RESET_LOCK); }
> +
>  /**
>   * ice_handle_mdd_event - handle malicious driver detect event
>   * @pf: pointer to the PF structure
> @@ -1838,6 +1871,8 @@ static void ice_handle_mdd_event(struct
> ice_pf *pf)
>  	 */
>  	mutex_lock(&pf->vfs.table_lock);
>  	ice_for_each_vf(pf, bkt, vf) {
> +		bool reset_vf_tx =3D false, reset_vf_rx =3D false;
> +
>  		reg =3D rd32(hw, VP_MDET_TX_PQM(vf->vf_id));
>  		if (reg & VP_MDET_TX_PQM_VALID_M) {
>  			wr32(hw, VP_MDET_TX_PQM(vf->vf_id), 0xFFFF); @@ -
> 1846,6 +1881,8 @@ static void ice_handle_mdd_event(struct ice_pf
> *pf)
>  			if (netif_msg_tx_err(pf))
>  				dev_info(dev, "Malicious Driver Detection
> event TX_PQM detected on VF %d\n",
>  					 vf->vf_id);
> +
> +			reset_vf_tx =3D true;
>  		}
>=20
>  		reg =3D rd32(hw, VP_MDET_TX_TCLAN(vf->vf_id)); @@ -1856,6
> +1893,8 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
>  			if (netif_msg_tx_err(pf))
>  				dev_info(dev, "Malicious Driver Detection
> event TX_TCLAN detected on VF %d\n",
>  					 vf->vf_id);
> +
> +			reset_vf_tx =3D true;
>  		}
>=20
>  		reg =3D rd32(hw, VP_MDET_TX_TDPU(vf->vf_id)); @@ -1866,6
> +1905,8 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
>  			if (netif_msg_tx_err(pf))
>  				dev_info(dev, "Malicious Driver Detection
> event TX_TDPU detected on VF %d\n",
>  					 vf->vf_id);
> +
> +			reset_vf_tx =3D true;
>  		}
>=20
>  		reg =3D rd32(hw, VP_MDET_RX(vf->vf_id)); @@ -1877,18
> +1918,12 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
>  				dev_info(dev, "Malicious Driver Detection
> event RX detected on VF %d\n",
>  					 vf->vf_id);
>=20
> -			/* Since the queue is disabled on VF Rx MDD
> events, the
> -			 * PF can be configured to reset the VF through
> ethtool
> -			 * private flag mdd-auto-reset-vf.
> -			 */
> -			if (test_bit(ICE_FLAG_MDD_AUTO_RESET_VF, pf-
> >flags)) {
> -				/* VF MDD event counters will be cleared by
> -				 * reset, so print the event prior to
> reset.
> -				 */
> -				ice_print_vf_rx_mdd_event(vf);
> -				ice_reset_vf(vf, ICE_VF_RESET_LOCK);
> -			}
> +			reset_vf_rx =3D true;
>  		}
> +
> +		if (reset_vf_tx || reset_vf_rx)
> +			ice_mdd_maybe_reset_vf(pf, vf, reset_vf_tx,
> +					       reset_vf_rx);
>  	}
>  	mutex_unlock(&pf->vfs.table_lock);
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index fb2e96db647e..a60dacf8942a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -1861,6 +1861,24 @@ void ice_print_vf_rx_mdd_event(struct ice_vf
> *vf)
>  			  ? "on" : "off");
>  }
>=20
> +/**
> + * ice_print_vf_tx_mdd_event - print VF Tx malicious driver detect
> +event
> + * @vf: pointer to the VF structure
> + */
> +void ice_print_vf_tx_mdd_event(struct ice_vf *vf) {
> +	struct ice_pf *pf =3D vf->pf;
> +	struct device *dev;
> +
> +	dev =3D ice_pf_to_dev(pf);
> +
> +	dev_info(dev, "%d Tx Malicious Driver Detection events
> detected on PF %d VF %d MAC %pM. mdd-auto-reset-vfs=3D%s\n",
> +		 vf->mdd_tx_events.count, pf->hw.pf_id, vf->vf_id,
> +		 vf->dev_lan_addr,
> +		 test_bit(ICE_FLAG_MDD_AUTO_RESET_VF, pf->flags)
> +			  ? "on" : "off");
> +}
> +
>  /**
>   * ice_print_vfs_mdd_events - print VFs malicious driver detect
> event
>   * @pf: pointer to the PF structure
> @@ -1869,8 +1887,6 @@ void ice_print_vf_rx_mdd_event(struct ice_vf
> *vf)
>   */
>  void ice_print_vfs_mdd_events(struct ice_pf *pf)  {
> -	struct device *dev =3D ice_pf_to_dev(pf);
> -	struct ice_hw *hw =3D &pf->hw;
>  	struct ice_vf *vf;
>  	unsigned int bkt;
>=20
> @@ -1897,10 +1913,7 @@ void ice_print_vfs_mdd_events(struct ice_pf
> *pf)
>  		if (vf->mdd_tx_events.count !=3D vf-
> >mdd_tx_events.last_printed) {
>  			vf->mdd_tx_events.last_printed =3D
>  							vf->mdd_tx_events.count;
> -
> -			dev_info(dev, "%d Tx Malicious Driver Detection
> events detected on PF %d VF %d MAC %pM.\n",
> -				 vf->mdd_tx_events.count, hw->pf_id, vf-
> >vf_id,
> -				 vf->dev_lan_addr);
> +			ice_print_vf_tx_mdd_event(vf);
>  		}
>  	}
>  	mutex_unlock(&pf->vfs.table_lock);
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h
> b/drivers/net/ethernet/intel/ice/ice_sriov.h
> index 4ba8fb53aea1..8f22313474d6 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.h
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
> @@ -58,6 +58,7 @@ void
>  ice_vf_lan_overflow_event(struct ice_pf *pf, struct
> ice_rq_event_info *event);  void ice_print_vfs_mdd_events(struct
> ice_pf *pf);  void ice_print_vf_rx_mdd_event(struct ice_vf *vf);
> +void ice_print_vf_tx_mdd_event(struct ice_vf *vf);
>  bool
>  ice_vc_validate_pattern(struct ice_vf *vf, struct
> virtchnl_proto_hdrs *proto);
>  u32 ice_sriov_get_vf_total_msix(struct pci_dev *pdev); @@ -69,6
> +70,7 @@ static inline  void ice_vf_lan_overflow_event(struct
> ice_pf *pf, struct ice_rq_event_info *event) { }  static inline
> void ice_print_vfs_mdd_events(struct ice_pf *pf) { }  static inline
> void ice_print_vf_rx_mdd_event(struct ice_vf *vf) { }
> +static inline void ice_print_vf_tx_mdd_event(struct ice_vf *vf) {
> }
>  static inline void ice_restore_all_vfs_msi_state(struct ice_pf
> *pf) { }
>=20
>  static inline int
> --
> 2.41.0

