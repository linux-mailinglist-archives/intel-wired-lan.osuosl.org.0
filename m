Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBD1722221
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 11:26:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E2EE560C02;
	Mon,  5 Jun 2023 09:26:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2EE560C02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685957184;
	bh=4WZI1ENEXJK7PAlG6c3MP1YnrtaoqGCzjA8QIjOFIbM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Cz1qsnqgAJgq7OFVXPBuRXv8G4d6A+MS1l//KzqmgLjSCYBlhc8NgWhCvjoP6qAok
	 dY+nVm6iRvyQpYUPKwe1YmFNInFVx0y4IXPdMAPjKufY/qS0amrVD4Z18lpNpfQijp
	 NXt7hWcrNPpN4q80eSNF2b3Pcg4TzGZpSFllpFbOinZJyd7v0sOOlH/Fx2e51fOgpV
	 Z6vFzkgiyoypJrO5Se+iqGmU4iIXuyolToifi9csb6lovp12bCIWUyLfXb/mt4w73K
	 TRqTyTMV9VvmNxPG1eQLenc8TiUrQtNDHHhZuwHFnJOeCj1ax06nE8DyFrS3HGwnFa
	 VzhT1slAdwlqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 47SIY18etzGw; Mon,  5 Jun 2023 09:26:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFCB4607FF;
	Mon,  5 Jun 2023 09:26:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFCB4607FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A60891BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 09:26:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8947D41888
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 09:26:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8947D41888
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xCjtOjORBAZk for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 09:26:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 276C341805
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2100.outbound.protection.outlook.com [40.107.236.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 276C341805
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 09:26:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lhvQTQc74BxQK5BoAFkcMBthxHqg/WW27aZ08lQSR+BTvTUu/QwFjSFeT0nAD1xqtF3IKAkt09NqVKWUMpYjPm8d123kZQGdX22q0Vcfk8qdtvNM+vOA8lxiWfR2DuPEzBgT0KT5IbbAOWLmel7ezmtOWVOb2A5MbHgggmCJ+ToBV1GzgJ/LquGXGz/vBZ0OVxHT+ELctinVYfYBt2gA+rOsF9oyIEzvFppHv25VmkEOiAzGWKtfZ2Hww/OpOCg8QTAh+bXsIvyLP06TOX1+8PeOzAdiPl7IW2wDlx+FpFu+bfdZXpsUWqntrMktdC9f/M5PPhMhVoKe5YQ4kV0nwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JkyFPRnWri41Z++6X+27JH6Rts+p8++35BpjThHYCnU=;
 b=FKZqq32t0wwcXVTBHo6gxAGpO9+fQZdn72jRH2hRBFoQWQk2qn9nqkP1dBBwI+/MlGMg8Ls8YnIkB3TqX27FxY+3X5AwGgxsjZtshbl8YRZsWnMcFQmK8vQsXgZ1SE1PBEP4jRC6MI2831SHJ6oVz3DWzd88i1/3YnTRQPLvf/s+Y4H6BmfDRLmz6IMByFP3m7AqcM3W+PpuuIgmDMVyrKe6w9yGW35b7aEoHRPzKjWWM4sm08ZBY6lcDoWMwQeZDjch/fokZL3NAD7BP2YG1qiePuGDTGl35ZKKcfwVdaY6ZuyWm7G0w8jrgTsaT12FFwY8KapFJuz9z7VRyh4K0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by MW5PR13MB5510.namprd13.prod.outlook.com (2603:10b6:303:195::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Mon, 5 Jun
 2023 09:26:16 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6%3]) with mapi id 15.20.6455.030; Mon, 5 Jun 2023
 09:26:16 +0000
Date: Mon, 5 Jun 2023 11:26:09 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <ZH2qMZ4gbdSiDE66@corigine.com>
References: <20230601131929.294667-1-marcin.szycik@linux.intel.com>
 <20230601131929.294667-4-marcin.szycik@linux.intel.com>
Content-Disposition: inline
In-Reply-To: <20230601131929.294667-4-marcin.szycik@linux.intel.com>
X-ClientProxiedBy: AM0PR01CA0131.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:168::36) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|MW5PR13MB5510:EE_
X-MS-Office365-Filtering-Correlation-Id: b236855d-eb65-4418-77a6-08db65a6e981
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dugOtLGuHZOuoyyzecd9DW2Vqv2apdRGJ1YGzbz4KIFyCLSn9TtDvMoob5qb+p/iAgkWyfVagFdtHDDfde5Hwro+Mi9/1P1JvCW7UVNNp/rCnuDvVPv1Ff8Wz1VKYZu3/aMHypMDNA1A/l+ceGuJ9ydpGcFi9A6dwe3deZ07S5oGyDAcj0fQ7Obo+zEYWmzvwCaS4htdaOcCn72pRbC1hjQcNKgh7mXoGqa2B0L9eKdLTCF9yelgw3AGTvFRzIL/Qf6IE16MVumlo9+JoUCjVpaQj3peiSgv2QGeioj3mgGhyYsb4ulhsDll/eXTtUk/BrpJWI6a5MzKEbmZ1Bi8PAw8xRr72rliJnkBHUT6ZFEhsUXu9RUFjwBZWASYE1fbRsaGBVMK9yUwC9erFl+cJ7Q/pmxoFntLTCBHCDmb6eCxfNqd1fSUCi0rg09l0YiutAqZvzVz1kPyZvQLHsUs3b/2MX+f/lE7wFXWoedRWEr95flzIhhuvhhmT6DF3LW0Oxi/zKW6AqnMPrRwG96lEFmPeH+UID0dsh31WwmNb30=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(396003)(366004)(346002)(136003)(39840400004)(451199021)(6512007)(6506007)(38100700002)(2616005)(41300700001)(6486002)(6666004)(186003)(966005)(83380400001)(478600001)(4326008)(66476007)(66556008)(6916009)(316002)(66946007)(7416002)(8936002)(8676002)(5660300002)(44832011)(2906002)(86362001)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IoqbQ2gb8x2xQu4t/gFVQdUDnfJ8FTGcd8v3TyW46WIf+xnyCSQBS/pQxcWK?=
 =?us-ascii?Q?PKwSko5yyfgW9oBUIyG+zT0NFUTbBb+nHLZtRDhDnd5cXEIjxKfnQvifJkdB?=
 =?us-ascii?Q?AHwI0IHEJyqkUsJvK493i9looKvbRzDdizjUPKSZ8WuDycjJrpZlrwLVcp4b?=
 =?us-ascii?Q?omG+KKrFjNClrmVjkgxKqD9HGqhSX44PN3z7afQryBM65OupPsP6EhJkI80K?=
 =?us-ascii?Q?RKvsaGwbLr0DMlhZmb+Y8ScEZAO0uxY+jPR4ra+lwAqZiGQux0VLdXi/pFIK?=
 =?us-ascii?Q?eN7A3spDAjXVBc3acQloP5nTin0u6fopvwmPG9esKDUpb5YoIGaNAKHcPKiu?=
 =?us-ascii?Q?/rORu3NweU9WnloLeG8FrTfHAbKPfloNwHlY4Tq4NT2TLnxP5+Iprx9uhYk+?=
 =?us-ascii?Q?8UWWbjaqrORyFebLE3fr1/o6i2ZUrOd+uucDwJyFRracpP5yFVnzEehYkwm2?=
 =?us-ascii?Q?wcy/EAMYNX4aGaqzbtEJiHiEfbXjzbIy2Ox75UvJRUzgN+EeXDrObdl0OEJ3?=
 =?us-ascii?Q?qG5VcNm/0Cxww06Vy1HE4ymUcEHzQAKpuDSMMBTuI6l8TMl/FN33DBS7JjOM?=
 =?us-ascii?Q?1m24/TBQxaLJMi8V/FNABPBCa+lwj9Jtpp2rJCcjsIkCVVW/VndpptpiRot7?=
 =?us-ascii?Q?fA+XX95b7lV+8GinVpSFsT6pg3738hg6HmJenBVqQlEAPG+BbAnLN0xcj2hl?=
 =?us-ascii?Q?MLviUKjgmLEyrcKQLx5IPLyzalliKpSwQtlwNLqi4jIogUy4Ue2DF1Qd5mQX?=
 =?us-ascii?Q?JfRDvByvHPp2W5iCl2W6PCVWUu03+EozQUdRc7AKqyyMO507+FOT3wQP6Znc?=
 =?us-ascii?Q?1eT+nc21QLYHKMWBI+TqhRg0DtIbHJpFOpOYmnIyoFeuDkUxeelp5GRuI6ia?=
 =?us-ascii?Q?vrziImloRWbUV8FkVCa9LCnmMPZadJUe3GJElA/a3wta2inrxwh9TPi0+kVw?=
 =?us-ascii?Q?CycgURdCGhKA3jWKxciZzR6g5+wXAGO5w6qEVtMWxMeudHkfzOQzdqcTOMUI?=
 =?us-ascii?Q?gRu2ZoOJY9t0cONN73oJ6yA8CsmUZJh/R8FJcaBE30qY0EggoG4Lch4Ik/8u?=
 =?us-ascii?Q?IhDNiJbAS/ogpVtlJKUat5r4qGLpra3cromZkLKC0htFJXWbqHqLrEBCMhdj?=
 =?us-ascii?Q?wO65fL/E7EOg37nlZXmDODeNq9roC/hQCKB4YVkJEuP0Dh20KfRwTuDHuRBr?=
 =?us-ascii?Q?eyjKicj57pwJXtmTCtBu2DuNMLGBv/6Soiromc2DmbkNEx9SJ5uVjvc3gTPx?=
 =?us-ascii?Q?aK14pN0mxesoqBd21pZGlOtNUWzaRh3lHJYFHzct127Y3FHxjoyq2Si4pAXW?=
 =?us-ascii?Q?fGpb5VIP/W9TECRAUkdl45D9EK0LiLn964PyuIbVz9/PqNmj//JIy/A10lZ7?=
 =?us-ascii?Q?DDVjAglVHUSKsQzEk7b5Plj3UjJvzAOhB9Cv7iDNL7PoRDPGAAXM8AtnOyY8?=
 =?us-ascii?Q?HBAu5vWSoDmsB77diH1xY99c/pVQLGf/oGn9zjdmot8qofiChfjzsTObfIXi?=
 =?us-ascii?Q?B4AQ7e1c/ucS9xMnkpeNS+9ztFSRw6SmC0JwLrF700DYKA2A0j8dOqt9DqT6?=
 =?us-ascii?Q?GJ1xWh7N0LelS9bu6RU6Kr8R67rC41N07LzbTV6zRsMdJrkqlzXwXu3eO9Np?=
 =?us-ascii?Q?gSHznoOl1UJrwYiqp4sohOPayB7ZFYYk8csSagu7+H+cUhPbauSdFjpUdx87?=
 =?us-ascii?Q?34LFtw=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b236855d-eb65-4418-77a6-08db65a6e981
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2023 09:26:16.0632 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /kKk/TdUnjtNmAYAkO/svH0DEPcVNyqoH44mtDruhX+tN/mJtOEgMDAGL1uuKeae1tnaIMCZzQ9nGEZWvPS8AuHKJ/f9WKuTTybm/HsKw3Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR13MB5510
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JkyFPRnWri41Z++6X+27JH6Rts+p8++35BpjThHYCnU=;
 b=qqXPHT3sQ58szyT8+z+GKrxfwym94fTC3j668gPxH5+jcjSv8tO1Y2XJBtDXxoVK05sF3zQO8tlHtMJ7Xnhtsy0G2yI7hRbvHPUDbSO9RZvsdCSCDBBbk4K9m0ccNJUONsYFuRypxvvle/1ViRoqV2Hg3HQXWoj9eBkZ0CWGFlo=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=qqXPHT3s
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH iwl-next 3/6] pfcp: add PFCP module
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
Cc: jiri@resnulli.us, netdev@vger.kernel.org, idosch@nvidia.com,
 jesse.brandeburg@intel.com, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 01, 2023 at 03:19:26PM +0200, Marcin Szycik wrote:
> From: Wojciech Drewek <wojciech.drewek@intel.com>
> 
> Packet Forwarding Control Protocol (PFCP) is a 3GPP Protocol
> used between the control plane and the user plane function.
> It is specified in TS 29.244[1].
> 
> Note that this module is not designed to support this Protocol
> in the kernel space. There is no support for parsing any PFCP messages.
> There is no API that could be used by any userspace daemon.
> Basically it does not support PFCP. This protocol is sophisticated
> and there is no need for implementing it in the kernel. The purpose
> of this module is to allow users to setup software and hardware offload
> of PFCP packets using tc tool.
> 
> When user requests to create a PFCP device, a new socket is created.
> The socket is set up with port number 8805 which is specific for
> PFCP [29.244 4.2.2]. This allow to recive PFCP request messages,
> response messages use other ports.

nit: s/recive/receive/

> 
> Note that only one PFCP netdev can be created.
> 
> Only IPv4 is supported at this time.
> 
> [1] https://portal.3gpp.org/desktopmodules/Specifications/SpecificationDetails.aspx?specificationId=3111
> 
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
