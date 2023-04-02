Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC856D378D
	for <lists+intel-wired-lan@lfdr.de>; Sun,  2 Apr 2023 13:18:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 20E68404F1;
	Sun,  2 Apr 2023 11:18:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 20E68404F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680434313;
	bh=Qqc+pBpGTIcMLCspzPT3cVtRndXoA3Inp93knyjwpmI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YGeQYJc44vNofZeCEDx3OocG7QrZIrzddmNhB3SDXwo1MhxW0sZWpkBBRbuYLKFxw
	 xTHD8LQ1wJwrS5nlXQknuzgs8/+nPEwyMpdgXOUvsU/2l25sFOgki9Ub75/ROIwSe1
	 H+m0LS2a3Mcnv64BHgndqXQGLOHQXrjO60agJO9M5dOO9UXGSBy90Losgk+RU/cWM2
	 se6rkP3Sy80Cn/k6JYU1qLHLDIpeGvIA+gVsvwkiCv/6XToxgdyQ8czSXSLoXKZf6S
	 ikUNY3W41kFRoa9H3dOSbwUpfxinkA2mplJfzo7sHoL9FK2eycVkr1rakNr0fDCoLp
	 BNzAuLc853wCg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O_0_5N4l7Rkn; Sun,  2 Apr 2023 11:18:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E5F6C4013D;
	Sun,  2 Apr 2023 11:18:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E5F6C4013D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 541821BF47A
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Apr 2023 11:18:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 279524013D
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Apr 2023 11:18:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 279524013D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RbHYmChnweuw for <intel-wired-lan@lists.osuosl.org>;
 Sun,  2 Apr 2023 11:18:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 25E9B400FE
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam02on2127.outbound.protection.outlook.com [40.107.96.127])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 25E9B400FE
 for <intel-wired-lan@lists.osuosl.org>; Sun,  2 Apr 2023 11:18:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H000Q1AwUhlb8tjSdJUWtrKpiv6yQ9On+W3zIbxzW3MwIYJ7xXhLzNgzI89BmCehxUtvHdclBCknycV91h+APQ9yXG+tKt59kbx5fsOuQiCI+9ja1B9eNlHt8zXBLJxDYJsD6MUMUEmiXuxO/k9sH2bZRvtMocvyMIe2zMdnCTjGZ2XOb4Cqyp+FGjKBqNr4t0k9NAIR9o9imAb7EEyk23Mi43Munw84EBABp696NX04YvZ4MbgcgVqh6MRfJsKY7WvJKcBYHbMFi5W4DLdN01M+T+Z9PLC8M23VUNC3fKtl+Ydnz1ATS7JqzivpvrmqRlJglwazWaZLbyKPn2c1Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vkFxkYHzmVsI5sqYJRH/Iubhaj8gaZEL5o5b6xYnXLU=;
 b=dmrqXVs28ceKK4UlxiyElthjDoXDe+LllYDZ9tnT3Za/Yofuui5mRzFxPVGKx0jrdvNKoRwmi9kkjY6AKEe+RbeyY19X5R0NkOgyEyWm81XEDz1rNuvHRRnyZP3ml0rk1SjWH7yot0a/oo1Lx4v1vwlvcfYvcNxM+5cVZSCvMncRkC4Yl6JeGeR+ZxRGJx5iISTXuzgVBHY1+S7Ypc2CHvX5sFgh/a/Khg5u3NhdLcbMpgafV9mmpxMN0NdTKEfO4yfN/q7Wu2alrhG5B/pzfeVcrgnavBa2Rxyqc6nJuaFBhnkCc8uSaIJgVVTm/Xx4S7LW5V+V2Gt8fu4M2aPntw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by BY5PR13MB3635.namprd13.prod.outlook.com (2603:10b6:a03:218::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.29; Sun, 2 Apr
 2023 11:18:21 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::c506:5243:557e:82cb]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::c506:5243:557e:82cb%5]) with mapi id 15.20.6254.021; Sun, 2 Apr 2023
 11:18:21 +0000
Date: Sun, 2 Apr 2023 13:18:11 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Michal Schmidt <mschmidt@redhat.com>
Message-ID: <ZClkczf8EvDsPidF@corigine.com>
References: <20230401172659.38508-1-mschmidt@redhat.com>
 <20230401172659.38508-3-mschmidt@redhat.com>
Content-Disposition: inline
In-Reply-To: <20230401172659.38508-3-mschmidt@redhat.com>
X-ClientProxiedBy: AM0PR01CA0170.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:aa::39) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|BY5PR13MB3635:EE_
X-MS-Office365-Filtering-Correlation-Id: 1385c298-75a2-4e45-9deb-08db336bf727
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z4+6w9E1pqhY+1KYCcqHcDWcWHTWr32j8mwc48jEcFCvgsl9MQY37fHoNriL475SQ2Rz3gZoJGBR2HcbjiDHT10uHFt54FBNhtPjsQLmjOGGh4MgmThDSI2AhZCcFZ4yBUCDhDMtDDHwD98cKbaCMNgVRA3ShIB6xHA8lb8WtHm+J8XTqTmOqkm57lHZGvxY6bjEFaAZcm2Zqoq/Po9sItuEtdNTKtoffKUPQc3CItF+mHHhloJgWgzt/VLAXkYGw1yc4HZ50KNprH8zdWJBHsfQYPazcXm3Jle3dFnehwZak5AENPYM9xzm0c1ST8/ThTHvggZKNaOhSrveSSL81Zyv4iMhWRGsttSuPa2nnKoa9qgYA9FGxcFS5P21J+Aac4QbZPKB5xjI14xGNZua/QhoEg7OVQOG24uvHPxXWNQkdxalywTc9cGYYhRuJEZcngnIfNMWYR/VBzEoUynbGDsHS8AZyiOTicX6UOc4dax8r2GZW5TYT5KDPHVFmeKE3YF5/1adJbmjqDegfbHDjvsGPtM7MAuX28gQ9f+XMwVWt14TQtfG3IBw4t61ymLuAW5eK52CZFDHoDnQ7ZffS7Wtjyyj4Qc3ww/O0ZffxS8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(136003)(346002)(376002)(366004)(39830400003)(451199021)(41300700001)(8676002)(6916009)(4326008)(66476007)(66946007)(66556008)(478600001)(316002)(54906003)(8936002)(5660300002)(38100700002)(186003)(83380400001)(2616005)(44832011)(6666004)(6486002)(6512007)(6506007)(86362001)(36756003)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ekE5V0FGTExOcDFUR2szcC9TYTNuOFBad1VoZW1rc0hrdGNuYmhsMFVGMjA4?=
 =?utf-8?B?SWc0QVpKTjZ1VWNIRmQzYjVFQlpGcmZCN2FHbldWNzdCSit1eCt4R25DY01r?=
 =?utf-8?B?T29LQUZRelFMbmJXY0NPVjRnWHA5Tys3aFVINVVVaG9iL3A2WFAzRUl0RjJr?=
 =?utf-8?B?WDN3bDRySW9iK1M2RDhKZGF0WkI4RW8vZVFEU2tWN09Za2pyakNhWWhyZUEv?=
 =?utf-8?B?T0lUMERZSC9Gc3BtamZVUng1YVR6U1BWVmpSZE11eWQxVVpkcFJUQ2pickd0?=
 =?utf-8?B?SGRRTTgzTDdkVjVLRXU3Q01OTm5LWUlwVXE1MHd2c0dyTzZJOWpjbUEza1hp?=
 =?utf-8?B?MW45NXpveWg2OUMyTTQ2UDlzWkNBUC83Smg2NUJ2NVNxaTZwMEVzUTNPVnox?=
 =?utf-8?B?c3dxVERJUk12M2Y2aml1RlBReXdiajNQVXBwMGpyS1ExUkJiY0FmNmg2WkRo?=
 =?utf-8?B?V20zemM4ZTlKeGIwaUdEUGJoOFJvMXdRUFB5QWUxUEVMbGVnT0ZGRGk5ZFZC?=
 =?utf-8?B?dWU5MUVLVlZtVGlZWFRMR2RUb2l2eDBaL2RlZFNYV2xkSlNJWVNzTWxIMHhT?=
 =?utf-8?B?N2U2TGFMam0vTWEybDRDTG5MLzdndHBqZm5rUWV0RFhac2ZRa3BhR1JTRkVp?=
 =?utf-8?B?dWU0eFhNa3FtbmwvK0l1amtKK244Y21NTlhNV0ZoelA1aFdJTTI2Q0wwS1VK?=
 =?utf-8?B?SjRNQ3p3NW41OU10S2RseU9qV1NkeWVqQTR1NGN6SFNMdDE1Y3VoY1NNeUla?=
 =?utf-8?B?YTBsUmo4UEF6cHpSWGFnQlp1TkV2VzZCeVlkSWp0ZXljR25XaHg0Uko3MTNK?=
 =?utf-8?B?ZnVxUTlyak9tVThCQU1rWXlwMm84dE5RVlBYWDRkVjBiYlhVaThLSVA3dHdP?=
 =?utf-8?B?NUN2WVBFWXp5U0hLWGFCMkowWmMxSlNhcmFSaGMvVkM0V2NLNElwdFlKZFZm?=
 =?utf-8?B?UERuVjYwV1ZJeE8rU1pZUTA0WjMrc3JKSjd0QTRIMCt2ZkJNZ3hVcWxTaldQ?=
 =?utf-8?B?cHh0WDRoUmc5L2xESnFCUmMvMkZJay95MDcrdEV5WDZINkZ6bHpMMmhRekts?=
 =?utf-8?B?LzlpZkZBVDN2VXBkNnZESVJyVGp3OHVnTXZ2T2plTUlnTEhxR21acEZFQXVl?=
 =?utf-8?B?Q200QTRJK2FwMVZudzRpR1VIM1lpUEM3YXNrQWlBL2Uwc1ZyanYvL3R3dGx4?=
 =?utf-8?B?SERDb3RiQ2JiUnMxSjBUaW5pWW00NHZrVEQrcUxsQVFIOGt6QzhZSXhKTjBu?=
 =?utf-8?B?WFBjOUpoUExBcndPa0VNSUlKTUpvYUtJV2dpMjhVMWFiakJLLzNLM0ZGQmhX?=
 =?utf-8?B?dnQ1Y1VwWEZXN2JSOHFrQ09mRVd3U1ZyZXg2MFhVcnFGaHFMdG5xeVM3dGxv?=
 =?utf-8?B?aXRoNTVEdEpTVWpqOHJTbzV5ODlqQUVYS0VWMklEcEh3ZUlRdWMwdmNEaHds?=
 =?utf-8?B?dm5CNUNvN1U2RVFmMTJMZUFNL1pZN2JrcU9obngwWFNEbWVOWU5IellxY1l2?=
 =?utf-8?B?REZnNFptYkcwM2g2RzYxemM4aVd6MENrbzV4K1ZrYzh1QmdSZ2RsNzVOeFNI?=
 =?utf-8?B?VUZxczkzYUozNEplUnhkL2xwR1NCMkNsclR1U2FhRkRaaVRBck5laTRnNjc1?=
 =?utf-8?B?M0RJU2pwcy9YbEU4aENHbDN4T0RGMXVNZmp4dnd4Tk9WVXE5bG9HZm9zd2NK?=
 =?utf-8?B?K0NDalpIU2lyZjlLbVFOazFSbi95b0EvZ1I3citMWDg2TkMwWmw2aHJjd3h2?=
 =?utf-8?B?MkxKd01CaGo1TXltNDRKU0taR0tnSXhEd2pGL29LQ2FDLzJ2Q1J2YU96OXpu?=
 =?utf-8?B?UUNVTW5TcUpld3dkTjA1VDM1SWNxbVE5ZG5pSDVhOHRwREIrNFhvMTFnZDlz?=
 =?utf-8?B?ZlVHR3VyOUlRK0FXLzhlVEJTc2c1eHh5eit2V294UFNidkhqeG5Qeng0ZFcw?=
 =?utf-8?B?VG9rTjFnUlZzY28vdXJuQWdVL3ZVcEE1Z0pwdXFxOXkyOFE1cXZsTGNXR2c2?=
 =?utf-8?B?TVhVU2hQbVZDRVE3a1ZjelNCellYMUNwRWJTek5ueExQVmRib0JVa2JLbUhW?=
 =?utf-8?B?MTIrdmt0eWx2VnFDaTlNNmZhWXFVdUI5MGR4QklWck0ydTNrNFVncG1IM3Zs?=
 =?utf-8?B?ZWI0NS8wbHdBcGZtRkcxaDVaNTJsMjZYYUpKWVVXamtLT0tUaHd5MENIZGhW?=
 =?utf-8?B?UlhpZUxRYVhLTElXeEljUE9hV0RaK0tpUFhFb2Fma1BYMGZvMUo4MC9ublpr?=
 =?utf-8?B?QXgyN05WT1NVNnJDVW8yVU43OVNnPT0=?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1385c298-75a2-4e45-9deb-08db336bf727
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2023 11:18:21.1085 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EUYuNcmILncwYkvGIZAeOl2krTnM5+2lnVsI/WLm0wxXVrkXsj9So82jZC0xL/evIRqUItQWR/VSbPcRJXcOU6pARekUp/fvt9gnN1zaVOs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR13MB3635
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vkFxkYHzmVsI5sqYJRH/Iubhaj8gaZEL5o5b6xYnXLU=;
 b=GylOuu+bShXTD3EqfeilakScVT+CxearMF0svglRVIlVHV/mU/86F8HtHzanrpRta3LFAQ1K+hgf8jUNKWPuW9R2d3zdI9KDkMRISvdRhuOLzfcTk2Rh/IUbaEQ/TNt0LeKufw8Dm+DUcilFBW+NcKF/oztIHzbnS7dYyy6x53Y=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=GylOuu+b
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/4] ice: sleep,
 don't busy-wait, for sq_cmd_timeout
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gU2F0LCBBcHIgMDEsIDIwMjMgYXQgMDc6MjY6NTdQTSArMDIwMCwgTWljaGFsIFNjaG1pZHQg
d3JvdGU6Cj4gVGhlIGRyaXZlciBwb2xscyBmb3IgaWNlX3NxX2RvbmUoKSB3aXRoIGEgMTAwIMK1
cyBwZXJpb2QgZm9yIHVwIHRvIDEgcwo+IGFuZCBpdCB1c2VzIHVkZWxheSB0byBkbyB0aGF0Lgo+
IAo+IExldCdzIHVzZSB1c2xlZXBfcmFuZ2UgaW5zdGVhZC4gV2Uga25vdyBzbGVlcGluZyBpcyBh
bGxvd2VkIGhlcmUsCj4gYmVjYXVzZSB3ZSdyZSBob2xkaW5nIGEgbXV0ZXggKGNxLT5zcV9sb2Nr
KS4gVG8gcHJlc2VydmUgdGhlIHRvdGFsCj4gbWF4IHdhaXRpbmcgdGltZSwgbWVhc3VyZSBjcS0+
c3FfY21kX3RpbWVvdXQgaW4gamlmZmllcy4KPiAKPiBUaGUgc3FfY21kX3RpbWVvdXQgaXMgcmVm
ZXJlbmNlZCBhbHNvIGluIGljZV9yZWxlYXNlX3JlcygpLCBidXQgdGhlcmUKPiB0aGUgcG9sbGlu
ZyBwZXJpb2QgaXMgMSBtcyAoaS5lLiAxMCB0aW1lcyBsb25nZXIpLiBTaW5jZSB0aGUgdGltZW91
dAo+IHdhcyBleHByZXNzZWQgaW4gdGVybXMgb2YgdGhlIG51bWJlciBvZiBsb29wcywgdGhlIHRv
dGFsIHRpbWVvdXQgaW4gdGhpcwo+IGZ1bmN0aW9uIGlzIDEwIHMuIEkgZG8gbm90IGtub3cgaWYg
dGhpcyBpcyBpbnRlbnRpb25hbC4gVGhpcyBwYXRjaCBrZWVwcwo+IGl0Lgo+IAo+IFRoZSBwYXRj
aCBsb3dlcnMgdGhlIENQVSB1c2FnZSBvZiB0aGUgaWNlLWduc3MtPGRldl9uYW1lPiBrZXJuZWwg
dGhyZWFkCj4gb24gbXkgc3lzdGVtIGZyb20gfjggJSB0byBsZXNzIHRoYW4gMSAlLgo+IEkgc2F3
IGEgcmVwb3J0IG9mIGhpZ2ggQ1BVIHVzYWdlIHdpdGggcHRwNGwgd2hlcmUgdGhlIGJ1c3ktd2Fp
dGluZyBpbgo+IGljZV9zcV9zZW5kX2NtZCBkb21pbmF0ZWQgdGhlIHByb2ZpbGUuIFRoZSBwYXRj
aCBzaG91bGQgaGVscCB3aXRoIHRoYXQuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFNjaG1p
ZHQgPG1zY2htaWR0QHJlZGhhdC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfY29tbW9uLmMgICB8IDE0ICsrKysrKystLS0tLS0tCj4gIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEuYyB8ICA5ICsrKysrLS0tLQo+ICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbnRyb2xxLmggfCAgMiArLQo+ICAzIGZp
bGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYwo+IGluZGV4IGMyZmRhNGZh
NDE4OC4uMTRjZmZlNDlmYThjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfY29tbW9uLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX2NvbW1vbi5jCj4gQEAgLTE5OTIsMTkgKzE5OTIsMTkgQEAgaWNlX2FjcXVpcmVfcmVz
KHN0cnVjdCBpY2VfaHcgKmh3LCBlbnVtIGljZV9hcV9yZXNfaWRzIHJlcywKPiAgICovCj4gIHZv
aWQgaWNlX3JlbGVhc2VfcmVzKHN0cnVjdCBpY2VfaHcgKmh3LCBlbnVtIGljZV9hcV9yZXNfaWRz
IHJlcykKPiAgewo+IC0JdTMyIHRvdGFsX2RlbGF5ID0gMDsKPiArCXVuc2lnbmVkIGxvbmcgdGlt
ZW91dDsKPiAgCWludCBzdGF0dXM7Cj4gIAo+IC0Jc3RhdHVzID0gaWNlX2FxX3JlbGVhc2VfcmVz
KGh3LCByZXMsIDAsIE5VTEwpOwo+IC0KPiAgCS8qIHRoZXJlIGFyZSBzb21lIHJhcmUgY2FzZXMg
d2hlbiB0cnlpbmcgdG8gcmVsZWFzZSB0aGUgcmVzb3VyY2UKPiAgCSAqIHJlc3VsdHMgaW4gYW4g
YWRtaW4gcXVldWUgdGltZW91dCwgc28gaGFuZGxlIHRoZW0gY29ycmVjdGx5Cj4gIAkgKi8KPiAt
CXdoaWxlICgoc3RhdHVzID09IC1FSU8pICYmICh0b3RhbF9kZWxheSA8IGh3LT5hZG1pbnEuc3Ff
Y21kX3RpbWVvdXQpKSB7Cj4gLQkJbWRlbGF5KDEpOwo+ICsJdGltZW91dCA9IGppZmZpZXMgKyAx
MCAqIGh3LT5hZG1pbnEuc3FfY21kX3RpbWVvdXQ7CgpOb3QgbmVlZGVkIGZvciB0aGlzIHNlcmll
cy4gQnV0IGl0IG9jY3VycyB0byBtZSB0aGF0IGEgY2xlYW4tdXAgd291bGQgYmUgdG8KdXNlIElD
RV9DVExfUV9TUV9DTURfVElNRU9VVCBkaXJlY3RseSBhbmQgcmVtb3ZlIHRoZSBzcV9jbWRfdGlt
ZW91dCBmaWVsZCwKYXMgaXQgc2VlbXMgdG8gYmUgb25seSBzZXQgdG8gdGhhdCBjb25zdGFudC4K
Cj4gKwlkbyB7Cj4gIAkJc3RhdHVzID0gaWNlX2FxX3JlbGVhc2VfcmVzKGh3LCByZXMsIDAsIE5V
TEwpOwo+IC0JCXRvdGFsX2RlbGF5Kys7Cj4gLQl9Cj4gKwkJaWYgKHN0YXR1cyAhPSAtRUlPKQo+
ICsJCQlicmVhazsKPiArCQl1c2xlZXBfcmFuZ2UoMTAwMCwgMjAwMCk7Cj4gKwl9IHdoaWxlICh0
aW1lX2JlZm9yZShqaWZmaWVzLCB0aW1lb3V0KSk7Cj4gIH0KPiAgCj4gIC8qKgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbnRyb2xxLmMgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbnRyb2xxLmMKPiBpbmRleCA2YmNmZWUy
OTU5OTEuLjEwMTI1ZThhYTU1NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX2NvbnRyb2xxLmMKPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX2NvbnRyb2xxLmMKPiBAQCAtOTY3LDcgKzk2Nyw3IEBAIGljZV9zcV9zZW5kX2Nt
ZChzdHJ1Y3QgaWNlX2h3ICpodywgc3RydWN0IGljZV9jdGxfcV9pbmZvICpjcSwKPiAgCXN0cnVj
dCBpY2VfYXFfZGVzYyAqZGVzY19vbl9yaW5nOwo+ICAJYm9vbCBjbWRfY29tcGxldGVkID0gZmFs
c2U7Cj4gIAlzdHJ1Y3QgaWNlX3NxX2NkICpkZXRhaWxzOwo+IC0JdTMyIHRvdGFsX2RlbGF5ID0g
MDsKPiArCXVuc2lnbmVkIGxvbmcgdGltZW91dDsKPiAgCWludCBzdGF0dXMgPSAwOwo+ICAJdTE2
IHJldHZhbCA9IDA7Cj4gIAl1MzIgdmFsID0gMDsKPiBAQCAtMTA2MCwxMyArMTA2MCwxNCBAQCBp
Y2Vfc3Ffc2VuZF9jbWQoc3RydWN0IGljZV9odyAqaHcsIHN0cnVjdCBpY2VfY3RsX3FfaW5mbyAq
Y3EsCj4gIAkJY3EtPnNxLm5leHRfdG9fdXNlID0gMDsKPiAgCXdyMzIoaHcsIGNxLT5zcS50YWls
LCBjcS0+c3EubmV4dF90b191c2UpOwo+ICAKPiArCXRpbWVvdXQgPSBqaWZmaWVzICsgY3EtPnNx
X2NtZF90aW1lb3V0Owo+ICAJZG8gewo+ICAJCWlmIChpY2Vfc3FfZG9uZShodywgY3EpKQo+ICAJ
CQlicmVhazsKPiAgCj4gLQkJdWRlbGF5KElDRV9DVExfUV9TUV9DTURfVVNFQyk7Cj4gLQkJdG90
YWxfZGVsYXkrKzsKPiAtCX0gd2hpbGUgKHRvdGFsX2RlbGF5IDwgY3EtPnNxX2NtZF90aW1lb3V0
KTsKPiArCQl1c2xlZXBfcmFuZ2UoSUNFX0NUTF9RX1NRX0NNRF9VU0VDLAo+ICsJCQkgICAgIElD
RV9DVExfUV9TUV9DTURfVVNFQyAqIDMgLyAyKTsKPiArCX0gd2hpbGUgKHRpbWVfYmVmb3JlKGpp
ZmZpZXMsIHRpbWVvdXQpKTsKPiAgCj4gIAkvKiBpZiByZWFkeSwgY29weSB0aGUgZGVzYyBiYWNr
IHRvIHRlbXAgKi8KPiAgCWlmIChpY2Vfc3FfZG9uZShodywgY3EpKSB7Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEuaCBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEuaAo+IGluZGV4IGMwN2U5Y2M5ZmM2
ZS4uZjJkM2IxMTVhZTBiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfY29udHJvbHEuaAo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfY29udHJvbHEuaAo+IEBAIC0zNCw3ICszNCw3IEBAIGVudW0gaWNlX2N0bF9xIHsKPiAg
fTsKPiAgCj4gIC8qIENvbnRyb2wgUXVldWUgdGltZW91dCBzZXR0aW5ncyAtIG1heCBkZWxheSAx
cyAqLwo+IC0jZGVmaW5lIElDRV9DVExfUV9TUV9DTURfVElNRU9VVAkxMDAwMCAvKiBDb3VudCAx
MDAwMCB0aW1lcyAqLwo+ICsjZGVmaW5lIElDRV9DVExfUV9TUV9DTURfVElNRU9VVAlIWiAgICAv
KiBXYWl0IG1heCAxcyAqLwo+ICAjZGVmaW5lIElDRV9DVExfUV9TUV9DTURfVVNFQwkJMTAwICAg
LyogQ2hlY2sgZXZlcnkgMTAwdXNlYyAqLwo+ICAjZGVmaW5lIElDRV9DVExfUV9BRE1JTl9JTklU
X1RJTUVPVVQJMTAgICAgLyogQ291bnQgMTAgdGltZXMgKi8KPiAgI2RlZmluZSBJQ0VfQ1RMX1Ff
QURNSU5fSU5JVF9NU0VDCTEwMCAgIC8qIENoZWNrIGV2ZXJ5IDEwMG1zZWMgKi8KPiAtLSAKPiAy
LjM5LjIKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
