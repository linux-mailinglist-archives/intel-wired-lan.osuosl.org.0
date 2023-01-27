Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C9E67E5D4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jan 2023 13:54:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DEF8241D42;
	Fri, 27 Jan 2023 12:54:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DEF8241D42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674824069;
	bh=NA86T7UCP0w5BivzEkfGwOZrdkYl6xSncZqa2d9DoTY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XSwXCXsRXy9MRs6MDqzTwOw1u8C9tDiz6V9uRr9sUsE9HQ8+Ncxy40nJaFtNITDDW
	 Amz29WVKDRc9AmZqOjlN+ZtHuO6msqXkeBA1yZBzNN5+K60jyiyF7EtzoKf6Eh9kaA
	 fg9wBO9AgUFFLfxVMrw+iGdwNVZuCuuAOaIXh0m6/mu6C7QgSCvcXrZTHHs3bktQ86
	 uADDOSIoinOsTUxhfApDjQR1bkDB06a1OwQKTX5+X4OvWV0UCqV4hvfEqMcR8T4Fkm
	 yCygTJuh/UCJ1eRtFIpSCCJgzN7Jve/TvxI+PJ+Va9NsxRg3hvRtSO5g4RVh9vMEy/
	 RioZ3I+xOL3IQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wUfrM_dbQlUX; Fri, 27 Jan 2023 12:54:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6AF5241D33;
	Fri, 27 Jan 2023 12:54:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6AF5241D33
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 276DC1BF263
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 12:54:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F1FD182378
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 12:54:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1FD182378
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id prAgCkXHXzi4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jan 2023 12:54:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5360E822DD
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5360E822DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 12:54:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="325751756"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="325751756"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 04:54:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="663254027"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="663254027"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 27 Jan 2023 04:54:13 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 04:54:12 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 04:54:12 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 27 Jan 2023 04:54:12 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 27 Jan 2023 04:54:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zp+5Bb0UG4fpJ1DaTQtyB7/O2qZXvS7YqUyW+t108thxau5qGntLnzI4U7eoBZslozCmYuYMKOZUrwMonEb9Vhdj6fXklEitp/qdXLh88ZVJIZLVfkPkwWfbICZlHKxutkG/YXc6khpHwVZ4xJkCGH5TJ3PMDSUps82QZicIi6dWDZc9hD0IPatyunv9O5IwHH6CxUSQr49uFz3Zgb/uSspp11388TDcV8aUyJdnx1z2ZbgnSG3RHcKaNHkTqu3FiBkaWU0K4IO0fl1WcD7XBuAXutkrn4oj+DsyNLZupnNpkCBpgNcr3LjwErVY8qYzeTu060PCZXpG36MFAfwCSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JhhhilfQ5Lrk2AXNKnCxkflxcJpWuH5O0p/3q4sz60o=;
 b=RcQ9fmLKhVsIRviuogoPAcpfuAx/Qa1SdoJCPvLLgiWafxFHoBUhv8tMkYhQu691y+Oz1IYJ2CfgGp/1+eoURzrsgKIm1oij8U7RVkw7qlluOY/334HDUbNGlKocWggNBaYIwGCWTujeL+/cmUdk9kwgVn8ElKtcEkx/ewRZXR4xLdxHCEqTtTM9Ysa6f5PPlXeURdEfZla3daFLsAGy478P4JaymPkRU1Tm5j6gbgW5UvREwQNiBDneiqcNhgzTQs/oj564Q96LddgX0lImvGFLYtxAzepdl2FvRGfhkreoGfFoyWADyDS/FsXsJW6XzleIOYU91ghsoveajyeiMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SJ1PR11MB6300.namprd11.prod.outlook.com (2603:10b6:a03:455::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.21; Fri, 27 Jan
 2023 12:54:10 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.6043.023; Fri, 27 Jan 2023
 12:54:10 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v8 5/5] ice: use debugfs to
 output FW log data
Thread-Index: AQHZMEFco6PWRWYRrky4Q825WlJHEq6yPDdA
Date: Fri, 27 Jan 2023 12:54:10 +0000
Message-ID: <BYAPR11MB336735CBE8B8A1B0929CF2ADFCCC9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230124221428.114-1-paul.m.stillwell.jr@intel.com>
 <20230124221428.114-6-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20230124221428.114-6-paul.m.stillwell.jr@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|SJ1PR11MB6300:EE_
x-ms-office365-filtering-correlation-id: 7f770d42-834c-4311-b55c-08db006595b8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ggraarfgUTyukCVbWhkaIjnp+xcVcfP61rMqUzjrZ5qO9lpfh9kED4goPmHVAWzMx1Hf4ze5KcgdJYdhruLOmrdNxn+dso/IlN2Ws7PY+wmJq8nObmwUrXacTnFLMSWpeAj3FFMQbd6n/bJU46Br0eNnfUfxPe+t+a0hfbAwIc0zIycSOfcyPZvpEjA4AkseYA+3ZYdpuQvEbEFyVeOj/xKa5v8WcD2xbB+34UhV7Jv/3mrTi4e01seAgU3H1qNv4PmKf4JLUj1fPnu1wFTCQhR1ddJG+/tDrvcWWg1fOyVYwNKgfwaSvnC2bO3qEeTgfYjJF4P1Z/93buNEv+6RMHALoSFHCBn+zi2Gt1cx3fBW2x2LLJsxtIJL2evT+QoO0mmwh/uBy2f9pdbWTh6/cUtvPAcbuuLhKIP+voW09uxVrOB1KI3KQ/CZ4p3yHCbqduqXQ8TkohFJmWS8JLY3DoAdFGnJSDFx7buS+nvnyGKpgyqOsD5pcr4wpR+10T2ZHPAYbnV+nD6XpXJrJ48O3b9Hd/CFFGtsj8he+nJ5ktkxfG/vBVJmPX0BN+ItDKjT1nIFNeT1N2tOQXO89eZymstxrb8WHdxgsJFq/+mdwZAqmq5svVvRQbFdUTRZkXgtgwW9miB5Hd7Yz6FlG98rmDNRcB2P+CgQ+baVD+1R4BNMWiltPYEpWtSVt72PPNNN/i0U4Ai6EwoVmrSn9Y7JhA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(376002)(366004)(136003)(396003)(39860400002)(451199018)(66446008)(5660300002)(2906002)(66556008)(64756008)(52536014)(186003)(8676002)(66476007)(8936002)(76116006)(66946007)(41300700001)(7696005)(83380400001)(478600001)(71200400001)(6506007)(53546011)(9686003)(316002)(26005)(38100700002)(122000001)(82960400001)(110136005)(38070700005)(86362001)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6GxdUnBhxWUZkGygG6Xx1J4mt0nWYAre0Vs9TOWNChyMDobD0NmkM6tE0ILa?=
 =?us-ascii?Q?c3VV5UXOq1lAwOeLwx8YxEO1vduv0uo9euI4VK6F72svErEQQSUqfINxYsN0?=
 =?us-ascii?Q?zLrrD8ArCMBnQYUgFWB+ochVJNKdC9zelXens9TzDxWf5suJ2ByQZhrxQWdm?=
 =?us-ascii?Q?4ZYZS+dDIIheEbYEBaEGAvX5dL05fN5KnhQ7RNeM9b2BLsLZp98WFqgj0SLg?=
 =?us-ascii?Q?axiuz+hbLaObuw/oFAI0hDGo8YoXHW26on7sMJyC6KNM/E7VItQFatJN4DT+?=
 =?us-ascii?Q?/UgwynJZ6Cs+SrZRSlDUkY+NV99Ar5rDNNybl5q6QEsbwJeH50Y8ZO2bEp2e?=
 =?us-ascii?Q?Wahi31g3oUnWzhFRfJkAxAxHq5XF7Po9uQl5VLguTxh4FgU4fAtqPVY0Tlf6?=
 =?us-ascii?Q?FBG5bxFTIfrLEi7LuEH56IbqS5T/F5ErccvaHLMj0a85TZE3StwAIq7DvYtm?=
 =?us-ascii?Q?5uxadBw9khwkttYzhJqKN38n/YTKusX1A95u1feJ1MKydB5zNwMjMRP1fi+L?=
 =?us-ascii?Q?wTe4YyduQGlsjVUmQIRowcxI1rg3uOovtFiQqYLX+Ceg5t7gN8GrfDuj/Zmt?=
 =?us-ascii?Q?Oni4rt1diODk8XNGs2w3Dg+kvkVUVGtjT/WVDldukjMSdLUA9Gdjzk+mZPjz?=
 =?us-ascii?Q?w+9/xZAYBxtZITf4j6OswrAbu++TDDlkQXdZdlGgxjYL/htC7P3q1GGAsFks?=
 =?us-ascii?Q?4WH/hCvMN67NRMLEs1DHFTJIa3qkdq1lmc2xYaMdTmODLRJuOShb5Ki1MYQI?=
 =?us-ascii?Q?onIbr8ocSVd6MpVSxLFshg3+lc+YOSwOdi/PsUYbmp1Z9IP68PlFiv7/LXYb?=
 =?us-ascii?Q?xyCLry6G8Onv53SLf75Zpv6xwaIY6rDldLp85rY9MjYhI6jDhg9LDUZktF6o?=
 =?us-ascii?Q?6THaD9P0ssQjtLdf4Kr75R2x62Eb88OOJ7liukvY9kIgP7Cp3UneCa7fkMwI?=
 =?us-ascii?Q?sBCfWx2TeM+bv/CJqZFvA7Gj7llqmVNh6A1oZMsOdybRmh4s6NoQKC5OvNGC?=
 =?us-ascii?Q?HIluBERUCkW1g5PXrH2DSum/GJ4WheX7RfqPFKjpEgqLeZCGGIWYobBTcVlW?=
 =?us-ascii?Q?tiqLKHeNixgJ5qMhssF3onTEAGeZAGeYCxS4cV4GEJ3ouWav7gJoyd7JxJNA?=
 =?us-ascii?Q?VGNYLotefko0IfyPfED8RPf6XdDJIQoCe0NW/t3E/lRQwTParxRii7riSGqB?=
 =?us-ascii?Q?7s5ZQsbpssLzsv5etrIUVHtX0l3xivEnKj1I6X9pLcFXaV+G2fH823j8nqvJ?=
 =?us-ascii?Q?VAcdrtgb4jAMnyOclDXYnhUa3PSNZeoP2PbxltPPbcUIVPtjae2zVt8tQ0HY?=
 =?us-ascii?Q?Pfee5Rfw0YiAWCRSvTTJJUqwZz9blvcopl70pXkqA0uYZHlmocYu0ndeiz4M?=
 =?us-ascii?Q?PHK6598mrCqjhZE8S+EFOGVdECM6RTn3TdW9yR0iRCCVOYHnhnbbSmFfsn5P?=
 =?us-ascii?Q?q7UMPmYQdxvsz1WmUX5Beq29Bo6cyULwgNVV226yJGo2pmyV3NSHtgc3RxxJ?=
 =?us-ascii?Q?PuQ9Fbxqo5QKg6ctc1IR4gPCKitUnP2hNXjIPM/9B0sBjwafcodjEosMpdq4?=
 =?us-ascii?Q?bMjdgzk0Ww8DVwLnB+FVfLzxi/sHN+mWo8+Jh/ll?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f770d42-834c-4311-b55c-08db006595b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2023 12:54:10.6039 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JEhRWMFwKGfoC3tfLtAN3nowVTuwi8J3Ni4TWU6sDazpWB7mbcIIDF1Uu6w5bc2rDtgkjHeHzjmgrRe4YL3wsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6300
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674824054; x=1706360054;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=SqtAW6afF/wWXyCwP9GywLJaYueRPbKcfmra84Tn/Oc=;
 b=BPoa6JpOzq/XS/YIL7kh5JQrKj7wJCmlhnHNeS1eIuhH9SO+PFEw4DrM
 X7dqwgp0Xyogl7QuVXc+Ny2u/QUsFy/QjvvdNGUMK6B9zg77lChLz4Wm/
 gxuTQRxgPtBVfdugOGNyIFj2kKW3VAVfOvAXwm6ceND5r8J3URzBrm7Ft
 P4l1mh2A9esEsI6dVNTy/jaUAFPrvPCol4Vrs9lfkarDfUD/fchZir8Bk
 Xhz6un1vPMBwh4g7ssFLo2y4P6l1W12KowVE+mJJPmpvft2VxYVleRYCe
 CpwBZn8a+MZW8+9cX5SijfokEVRVAeOfa0nHBD5ek1Ez9UgvVYYfEEuM3
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BPoa6JpO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v8 5/5] ice: use debugfs to
 output FW log data
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Paul M Stillwell Jr
> Sent: Wednesday, January 25, 2023 3:44 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v8 5/5] ice: use debugfs to output
> FW log data
> 
> The FW log data can be quite large so we don't want to use syslog.
> Instead take advantage of debugfs to write the data to.
> 
> The file is binary data and users should send them to us to work with the FW
> team to decode them.
> 
> An example of how to retrieve the data using debugfs is:
> 
> cat /sys/kernel/debug/ice/0000\:18\:00.0/fwlog > fwlog
> 
> Also updated the documentation to add the new parameters.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>  Documentation/networking/devlink/ice.rst      |  39 ++++++
>  drivers/net/ethernet/intel/ice/Makefile       |   4 +-
>  drivers/net/ethernet/intel/ice/ice.h          |  22 +++
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   1 +
>  drivers/net/ethernet/intel/ice/ice_debugfs.c  | 116 ++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_main.c     | 125 ++++++++++++++----
>  6 files changed, 279 insertions(+), 28 deletions(-)  create mode 100644
> drivers/net/ethernet/intel/ice/ice_debugfs.c
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
