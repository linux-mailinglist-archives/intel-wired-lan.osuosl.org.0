Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C33802C2D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Dec 2023 08:38:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 62DD181EBC;
	Mon,  4 Dec 2023 07:38:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62DD181EBC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701675499;
	bh=0QgNlg2c/jmxNkrSiSO32Z9H1Yv5rPL/Y+R0vwTgTcM=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6Bo2bCATN2zyhFdxMbGHYUmBO0wE9IZB/LmThnHvm4U1WRI+BDUMmj+QlqWJ5LCTc
	 Wel9bjYMlAAB98G9IrmbdGkLMV34WvgsN6BVB0HQmNVCsykG7I6AFG0XQ1qCNShDob
	 djMP7mPJOK/1MDPljlQkSMJVkPe0pMr604GI10tctDnE5WObkopDfhuT8aD+Q9f8gW
	 hxkv3Ydf0AdnvQQpMHsUWmhTbQBzcbZdxqexZULKxp3JjyHUa5qc+semkW21fXNb70
	 trYpriv7sqAlfhIhX9SpzUyV1129eBwc8ytiVVhPin4O28dxSLZSKaZxs6/DZD3Jge
	 BDNvEN9U2XS4w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I--ljFJk351Z; Mon,  4 Dec 2023 07:38:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3558681EAF;
	Mon,  4 Dec 2023 07:38:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3558681EAF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 181601BF33C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 07:38:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EFAD760B12
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 07:38:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFAD760B12
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a9P68GQEDqpX for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Dec 2023 07:38:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2DC4460AEE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 07:38:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2DC4460AEE
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="396503828"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="396503828"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2023 23:38:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="746741424"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="746741424"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Dec 2023 23:38:11 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 3 Dec 2023 23:38:10 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sun, 3 Dec 2023 23:38:10 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Sun, 3 Dec 2023 23:38:10 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Sun, 3 Dec 2023 23:38:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cfVEYnQsEJqswPyfd0x2iMvPT3gsoCqaNwXbrCOXyoFTzCzS8/bUhMZDcVhepVz0syo2VOcu4rGyW3iVzzwTimQvvvcAn5mkbYRUCDgu0+EWGgKgdbuH93VqoydRMK0R4J4jGcYL17X6bNSbLKmcKlg11BSb4rJIFQLLd+wpnWqZUJdx/ucB5zS65rMVjQmw3L0EdRTM9lfHsWXhEfKp9iaHMstVR7LJ0WHUJnS99axEw/12UHDbQ2mGmfymO/wI/vS368phSGyaRnFgToOoKftw/RQEOOB00ruhqLVSY6K70cjhiYCaUmeKyhmfs3pU48YaHtLe8aq19rmrITcLug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jp0kA8nd+4KrO/gg9WF1hsLiFQcrOrWn3fSWDCL14Fg=;
 b=gADbsaxIkmoh3rjTHvt5xOH9UWQI3PO/Ksf/x4/f/uclOEPgasAyEz+6TRIViqmsOnhuNmidWYDWzyf1J2L0RKvAzVR2F1U4Ull5uKcNhAKwZAqWd+tmu8rqwaO9sx5+qwAIx78IhnLxo4NCXHXKLJXcV2UbkG85TN4zlT/9ulGgUqzcm2vEp66wcPzx9HU31Vo9/Lv5tYPRLdG2dhvwpOnX52EGFV9WpjbHyS/oAX71eza6DPZrGNy6mQpPQDMVcHv0tPMb4vFWtC/g/K/QHZuuZ0OJNmlKwK2ScFGOsWePErTu3huL/ab/v1Dmw734AcbM+tMtcNeBO1RCiYmklg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by PH0PR11MB7470.namprd11.prod.outlook.com (2603:10b6:510:288::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.33; Mon, 4 Dec
 2023 07:38:08 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7046.033; Mon, 4 Dec 2023
 07:38:07 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v18 1/5] ice: remove FW
 logging code
Thread-Index: AQHaIlJ3Jq/mKNRtKUu+c2+r/IYOx7CYxIfA
Date: Mon, 4 Dec 2023 07:38:07 +0000
Message-ID: <BL0PR11MB3122EFE9BC75064E33875354BD86A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231128232647.114-1-paul.m.stillwell.jr@intel.com>
 <20231128232647.114-2-paul.m.stillwell.jr@intel.com>
In-Reply-To: <20231128232647.114-2-paul.m.stillwell.jr@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|PH0PR11MB7470:EE_
x-ms-office365-filtering-correlation-id: bc8f22e4-e6c3-4d78-2b1f-08dbf49bf514
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AunRvK735Ar32tuaY+Hgdb3071+U8syF6KKemLkOp0sYzOumoB8xgVZGFrzSsrj2pKsXQaVwG/ed05ZvYk9/5UUyA6e1CUgQ5tXOZCqj3Tr2wlkUZhBzPPZEeMXCHyj42WYUWx3JS8HKTw5ExtOeSoG8nYJCjmiXWcEFMLpamqdqKwMZ9u4dVY+ulsCV8ltXnJF7ISdJsv2V8KuGUnEkl/WN/bxXqlOvuB7fsTwHrAQ8ochvaz6z3+f6Na/y/aCOIkPsasUiyw0mZ1i83HHtuA/VlhAyGt//bDtsPt9kzA7dBOg4JqLJztcSFodzoPCI3ahkniTn1Q5AllDZPXmymh2j9KrNApmYyyoBYT26Wsx3RJ8HZregfYXosvc9mYMmC47EwqreUrMquL7+6xS/B88wp7FCntzR4CQRoxF6xKKy1PVCvRZvNU76R2jF/Ow8rymXrDyUWSl+J3URDnfe8TcIlanZeXoOlZ8e+fh29er1/+UvX6l4nPkLgLvhFVX4kdoLjTgbtz3gdOWM1x+FFOPO8iNV/YNUtNNXThxdX/y0fRgOQtFagzPrwv78Homk17Jw793qXywdBvObUyMKgkh2DKkY/wzK+8e2XocRBTR1s7BpbJ0Fq7C52CTzlLl4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(396003)(346002)(376002)(136003)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(41300700001)(5660300002)(2906002)(86362001)(33656002)(38070700009)(122000001)(107886003)(26005)(71200400001)(9686003)(7696005)(6506007)(53546011)(83380400001)(82960400001)(478600001)(55016003)(8936002)(8676002)(52536014)(38100700002)(4326008)(64756008)(316002)(66446008)(76116006)(66556008)(66476007)(66946007)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+Jha/hyJ5EBk0AdikLfLKIOvqH1Bsz1eNnehLPark7TIbEyeuhMSdRxQCDPR?=
 =?us-ascii?Q?H7tnRrjUeBAcZPwOYhObKpc+slRqsZKj2elellYqTrUAjecyFISZ2xkY37fM?=
 =?us-ascii?Q?cE4ZtNIoMHteo9pXxs0oDqVnKETq7bGbkSSdJ1O5ZQCyuiduK3O8uSgWXRYf?=
 =?us-ascii?Q?bFYsVrFKOVmT5vXirnkrbfVwGIBoIfCCIYmmYUaZ47QfP4iocklHjhBFes3O?=
 =?us-ascii?Q?mDrREVK4HkNl3VxBRNt9bi1OZjtgflGMf8D5ROHCzdlHMSJnaB51mx94/5uW?=
 =?us-ascii?Q?ezVAiPyw1d8w68tszIrZucxtDTIfOxgegls3EadPSmrt6Bl86zUJ5g+Ifb8T?=
 =?us-ascii?Q?1R1WD5kLN6HXOGBoi4CfVBZcUS6FccVdokG4z+loQFx68DrRiP7ns0ESy7+8?=
 =?us-ascii?Q?Ezr+7qChpqIM1GSujerew+FzSuNpDrOxT1g+84fF7PO1frQNEsgqmV8qyZtw?=
 =?us-ascii?Q?QHjSsQviw2XenI95V7QoWPWnt49Cj50r0Cihaw39TW8lOzgjNYQS4YLptFEi?=
 =?us-ascii?Q?dByWNCi77tFpHjAxL06E0leAF2jtxX+ucO0LnN7AeuGKYKXfdsVfrQTbwIfd?=
 =?us-ascii?Q?vmgiPdzf5wcjEhSbxX8fctFCqq8xhV8uVPcI2fAb/FW2LY9W6u+6muxzCwe9?=
 =?us-ascii?Q?JefZDS7CCNQtWmnXsHg8vZjgMqC1qCIWH0JEdxZLapUhC+tzgjIa8C+MFa5y?=
 =?us-ascii?Q?RcAj+TkDPyOeDoyMf5vLxya2i7k3uoLfWXg8K5G3yb9Wz11so+PiTsmyDxJu?=
 =?us-ascii?Q?xJV1nY4sBZ/Mg1DBtseA5GdiLFyIjKfw04r1+tQBUxd7FjUweSxJgfNkES8Q?=
 =?us-ascii?Q?e62SNLC8m/zxuhruYIsvoOfu03tZjlm9353lzuZc4chLva8w5uTpS28DRA24?=
 =?us-ascii?Q?DnngYb6TD50MxejnLzYh6Vkiw8EykYayQJoyiFmGUOlXDW4C7oJ1lNlniKrS?=
 =?us-ascii?Q?FnPE3qCEUJcRmY/F4C7SoNXYTrCzMUmxzBGNnG6aS1EVdYnrXjqtGuQ0qwMy?=
 =?us-ascii?Q?RhBXXC6rnt+pUT0WrUrc06u04JX7+V5isk7De0qOaSKJcFTwvE3NxrYTjD7A?=
 =?us-ascii?Q?EomwWaA1o8wD4wKzhbkVq/JhNa6xXfW3AZkSbdpl9pg2tmCRzDhwFFyFxDRF?=
 =?us-ascii?Q?yhaa5QFT9WjrD05vNNC8zzJRBttiT/ri680c7tIC0CLbQOrOfRE1sv29ESoN?=
 =?us-ascii?Q?ABDnw9Sfmv6BwE6UcISSq5bEyJ6a5ktBJe3OV/z0N0cY9vgnbfUwRZkyHCVk?=
 =?us-ascii?Q?p2Qq1rc/YYY17quf69PhyA/QqFSGh0gQiXvlwKN1thYrXRG/jNu9sUULzVMT?=
 =?us-ascii?Q?g4PapVXFE1I1lvVX8SgR1Y+QE6CeAFjkhemFa3tvMMUdgpp0PhlPYd10ACg+?=
 =?us-ascii?Q?PLxjVFLxhAMiTRaFSP+qqg8pdeceZ1R54uLWT2A0vPkoRoEJiRXQXUkkO+ug?=
 =?us-ascii?Q?Yu6pg84a9geHRGJBuL1skN9urEUs677Q/sITOrNtcgzr+oUuV2EBuuDziNFV?=
 =?us-ascii?Q?Odhxebr37u6lTIXbnkUGw0KhwxZ0x0ulGQwmUmRQh0IdSh5wk0Vs6g4acHkc?=
 =?us-ascii?Q?KXOOZG/I9wCziNWR6D+WBi2oxzLcGz38OQyDvTtxgn6R95dPKQ5IYUzPsD5d?=
 =?us-ascii?Q?Nw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc8f22e4-e6c3-4d78-2b1f-08dbf49bf514
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2023 07:38:07.1714 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pzCBR90l9pdVYqRPmBSwQs4F7UZBgSFruo3lVt1xFmM6xTkZrxjBRs1TdqI/EtOC6hxbg7HVmgjDpxsA8fDrDTjOOFzucwCxiNKcZgl6XiEE+Jux96t8Unf06opsGJPe
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7470
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701675492; x=1733211492;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HkFjDI1yRl2WLIUr+89i7ahdRcVS7g6w8QfJ3amzV2g=;
 b=ntIgoCgC8EsR55eBfpT+VnO8GPVTAEoSJO1l/dXL2NUad58ZEueHr7OR
 2uqj5wFO0SpjCI9ozYF2xmBTJaJegvBAoA97kZFWYBrdRZUJN5A2vOghT
 xNBulf7wlr28lwpmHSSVxGWCZj1rbw0VxWh248Wae3m6SoAsXWcoj0zPC
 At/WmGSBstWqSZJCKGuXryNSbDhQz/pCKF7Fxi+32i87L9bvYHXz0xFDT
 /5Nyxw5S5An0eC27MhCQPDDDdGrXnfVsYmsm10EXws5PhUgP4zkfiEcjo
 rAUpSmd9di8MpnGs0zbpT4UofKz36ffkGIOxVYUOh4k9IEaCfP/3yWMCp
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ntIgoCgC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v18 1/5] ice: remove FW
 logging code
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
Cc: "Stillwell Jr, Paul M" <paul.m.stillwell.jr@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Paul M Stillwell Jr
> Sent: Wednesday, November 29, 2023 4:57 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Stillwell Jr, Paul M <paul.m.stillwell.jr@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v18 1/5] ice: remove FW logging code
>
> The FW logging code doesn't work because there is no way to set
> cq_ena or uart_ena so remove the code. This code is the original
> (v1) way of FW logging so it should be replaced with the v2 way.
>
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
> v17->v18: none
> v16->v17: none
> v15->v16: none
> v14->v15: none
> v13->v14: none
> v12->v13: none
> v11->v12: none
> v10->v11: none
> v9->v10: none
> v8->v9: none
> v7->v8: none
> v6->v7: none
> v5->v6: none
> v4->v5: none
> v3->v4: none
> v2->v3: none
> v1->v2: none
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  78 -------
>  drivers/net/ethernet/intel/ice/ice_common.c   | 217 ------------------
>  drivers/net/ethernet/intel/ice/ice_common.h   |   1 -
>  drivers/net/ethernet/intel/ice/ice_main.c     |   3 -
>  drivers/net/ethernet/intel/ice/ice_type.h     |  20 --
>  5 files changed, 319 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
