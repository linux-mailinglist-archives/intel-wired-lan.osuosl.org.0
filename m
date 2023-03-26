Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C276C9482
	for <lists+intel-wired-lan@lfdr.de>; Sun, 26 Mar 2023 15:35:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4475760ABA;
	Sun, 26 Mar 2023 13:35:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4475760ABA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679837734;
	bh=u+f15BQkAwmruBM5AE7pq1AJqwhdH5DOyTpMoNaEZHQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lN7prVGyWb4LOxNnflpy0gSok/noNY0wHvwqmW6+WWjKaCk1m6aCCsgrzbFTt+MHY
	 nyLLJcSnbuKAcyqGHsc42gzGmBOEOpwFNEpRctpura22EbQ5POeEnGjg3fyE93UfeB
	 DunnlIK154ogJ/BY4wVB0wVz8i/Uq3d3dhrbXhR1O5Ye11Eh3yhWoAY+ikDUbAyHCZ
	 4p49l08sp07qWPc5HYU9IBX27f8Wd4hu6NWONpXWeAF3BFzPMOngieKFI1UkpDmGwk
	 68UqzS49CkkTO/o9n98mOqJniBY7s/17AcqulPB758aamhYzn+s2NSPihLMm0k4IlM
	 4zQCTcmH2bC/A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CqNV1UqD14Fr; Sun, 26 Mar 2023 13:35:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E72860A9D;
	Sun, 26 Mar 2023 13:35:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E72860A9D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 836011BF578
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Mar 2023 13:35:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 66C8B410DB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Mar 2023 13:35:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66C8B410DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DKmpvd4rhWRm for <intel-wired-lan@lists.osuosl.org>;
 Sun, 26 Mar 2023 13:35:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B8B0410D8
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2125.outbound.protection.outlook.com [40.107.92.125])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9B8B0410D8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Mar 2023 13:35:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RFl12ZbIjFkeGNOzfuFFWCo5i7ebV87d4FW8El3L5dHi/zEm02tcH9O6KN+056Qyur89iq64V5JX8G/op4T4qa6QEggPbKX7iTSczFBZTcf2eB9/Oa4dSgvVVE1bU63yAbGwOh/gNuyEVGI8z45woOfp/51on/8uSu8BENeNGyrNe+x6aOryXkVEjzEE/NTtgWiwmLKfUMKXgv4Z+eQ/BKoFLmNs9gD40vdRIWy3U7s8nA9sj5Avzg1pWBOEObN4Y+C71UHV9rVtKtmr0GbFD0+a7UsafAsaVZoWhv1F7sWPmynxZVrIV2OrCXzIGXMKeyYyU2WHqGwBddDFD6Dlnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hq7NfeHEzNJcF0gv7NEV0IQZihcVj+yjYmqlUe/C8xI=;
 b=eRt4w8eRJYQtN2Laau0tD5538oDsLa0WIukBqAxQAW+iOC0ue0qpypMx/C9U2xIRxQwaQ5lhefib0z52018iN0umiBPsdzuXC2hxrzdBYl/qG0EHw65QljtTNXH+X+Vap8WsF1aau2p4vEoznchhG6SRURPjQoihkJp99g01QthA8ek9a2xNBaVozGWTWqeg7YHVFK1l9hygI03dXdnKaSBYjBy0nJJOsXQuM5Q52woOO04Ee5JQiecFyb4LWEvn7pzJ/jlj9ITZEzJKMBbRAVgVFmq0/4GKnKvvskdWWPL5C9RuFLnWHjXm2akFOUdzgnqyyv9VgbYdeHcN1qQ8LQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by CH2PR13MB4428.namprd13.prod.outlook.com (2603:10b6:610:65::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.41; Sun, 26 Mar
 2023 13:35:25 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::c506:5243:557e:82cb]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::c506:5243:557e:82cb%4]) with mapi id 15.20.6222.028; Sun, 26 Mar 2023
 13:35:25 +0000
Date: Sun, 26 Mar 2023 15:35:18 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Piotr Raczynski <piotr.raczynski@intel.com>
Message-ID: <ZCBKFvNZPPw0dFPj@corigine.com>
References: <20230323122440.3419214-1-piotr.raczynski@intel.com>
 <20230323122440.3419214-3-piotr.raczynski@intel.com>
Content-Disposition: inline
In-Reply-To: <20230323122440.3419214-3-piotr.raczynski@intel.com>
X-ClientProxiedBy: AM0PR02CA0130.eurprd02.prod.outlook.com
 (2603:10a6:20b:28c::27) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|CH2PR13MB4428:EE_
X-MS-Office365-Filtering-Correlation-Id: 1aa7f892-0544-48fc-101e-08db2dfef485
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YRZ12a46dQPF6E+ZjgdH4kqTxmLAcG0o79n8TClxTM+cQsSqeEvyc87c3vKKbUOfD1Zk9EZeh6Yq+hVCK6YVIw08E/7qUWvwI3dxVfrPmS+Tt0JU0NeYsW+4QAJEbSD++hLqwToQm/tZgwzfJOMyqvcUxVbx+vG3SAJzQibXPGFzkDHMDUpt6cc80X9AE2FI/6nhJjlxriS+jXHKDS9X1ceuR516KSzgT9DRjLzNGjqrOZW7rjYFQA6vhHI8wsEYmUQKWv8brL0lED3GFlG09C2ykJ7Q8E8MuBBG1WOZ14O3QEvoutxb+olqMPabu++lJQnntaBEiyYrvet5sdovE5NQvmJmYxn1rImWw+tYnTdNE76BbFlWrb+Xj7NImT7z90W0D0JeVnRMWlfb89QWLZWhiXB/fqf3ugn503OH9iOBr2QmPnk7/VUtyfZ6E2JWmDnZpkGbCJl14nb4gTkaJu/El2CNYVjOqB56CeULotT97R7fJH3Vm73Od7allxY+H4ttnrgUBhiMINmY/c4ZrtqAu2dftGgvN8XazixldCOzjFtn9JsT8Uq+PahB7bFe
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(136003)(376002)(366004)(39830400003)(346002)(451199021)(186003)(6486002)(316002)(6506007)(6512007)(6916009)(4326008)(66476007)(66946007)(8676002)(66556008)(41300700001)(478600001)(6666004)(2616005)(4744005)(8936002)(5660300002)(7416002)(44832011)(2906002)(86362001)(38100700002)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TlNPjA4D+r0+AuQIh9k2n4x7ck1r7QgWTmRdv1XAm/09cYfQD3jlRgK2TjG0?=
 =?us-ascii?Q?fSfFGn3NqU0+1wS4NM6xpeOoBP06pvDzyMxi8ICs7rOLttHewU6DEzIYZ362?=
 =?us-ascii?Q?2D2ph8NbEQctOoxwWG24fdNUq/K19BC257qgnXDQo5WTswNo1IXWseDPNmb3?=
 =?us-ascii?Q?hp3tbORzgR0Zwh1NmhMgJoAFhhKeA4yj/VLrW0YoeT6/acVLMEsqMgT3o5hf?=
 =?us-ascii?Q?uAatO+sb77qGaYNhYAGJ1DnzcLaKOnWK5D20OeJON9CoonG5g5UurG3eTeo8?=
 =?us-ascii?Q?b0jcz6wwUjdEQMVFET8Wiee8licndZ9abvF8A2vP3PbVuF4CT+QPe2BP0GyK?=
 =?us-ascii?Q?PX+2PQRFdorg159FW9LzSIsgGaNrOTK5j1KmSgLWRjrr6XlKJVeDLpnQXBLd?=
 =?us-ascii?Q?4V7WHM+N4lKP7VVo6woMhADjdpIRlMJuq+XfTzHtWW+bgIFYN0+0iuVsOlwi?=
 =?us-ascii?Q?2RAbmhEot9lnU7LsJsUj4fTvQoCotGkCysjyXddt+pd0rD7RjIAwlJz94Jug?=
 =?us-ascii?Q?YSuLkU0NWx0rCgOjKF8BWTH0bF3hxw2etCvYYAiSr/7yKnIhduYB63BWIoJ8?=
 =?us-ascii?Q?FvREkUSqX9UiuVMEp4MBHWQ2ORo+2w3akGPGzaKOufd6Z09eKpRE+OkWCFg6?=
 =?us-ascii?Q?UHdIURuuZBMssseuzEOIANaI8PVdJHFhWfhgazt5oeUc3AtIXuyuvChJOyvm?=
 =?us-ascii?Q?Tmq1QtCe/mSLkV3682ulGoeIe4HgLbkQgpHEr2GA77yV5qRsO3IJMQxdMiia?=
 =?us-ascii?Q?6Rcg4qIldD5q4YC/JC6fVeteV/E5wGa2SCPUbFBbWZvnvapt/AEIhmUxOwJg?=
 =?us-ascii?Q?dT1ehr6G3iLWfVQhEVzKxvtf6/mJcnurkIMLbhRgFZvvKi3EzLsp6FLZOWlY?=
 =?us-ascii?Q?Ck0ydVX4P2nAFI1vZKBoHR0t5lZMsiChXbs2yjbK69LAkqVyxJneUburSvxO?=
 =?us-ascii?Q?JhFzFcKx5Oljb24vpheyH9Fp0upsKXUSsWjFGeN2QFJJJkFgXU93KAQkT8Yc?=
 =?us-ascii?Q?5XMHJGQuxyHrOn3my4PswTGjc4oLzWK5GwI6T2FOauDusseHvKUE2n/TfWsp?=
 =?us-ascii?Q?k5ZVtb7twKO/Y/sQf7KMkI+m6mL9LsqcXLI/09lYOEZr7bqq1HgO0UfUCeP9?=
 =?us-ascii?Q?D0bLOf5cA51Fcy00XgU87wcCMaZibMz9incBQDHocxuPGI3AMh43fA2kdr0I?=
 =?us-ascii?Q?/e2h3h2oZU3NkRCNDhK8IasYQUE/+9q7sBTukxFQKQneZ4D5rKuKvgwZyCyd?=
 =?us-ascii?Q?TdWvwzHeFc+vDn8hBmaQODvjW9+6ROSwTc950r3FsNj08eYSUE/UXuY0PwCz?=
 =?us-ascii?Q?KH9X1KstfQlgJgeX0AA/SMeOITbqz3KMOx1XdfMMU0DshIqWeORhg+u2lGYA?=
 =?us-ascii?Q?S6mkVEG/NXKuK6jYS5qbz6AQcltXvaEB7xosjVd6jacj7zInfO4NGnhDOLPv?=
 =?us-ascii?Q?LKC/jhhVI7C/5IAX2ZXaYN0CcFf3yqLFfAjGaJwJvJIGEK9Q5VokzV9NfRV1?=
 =?us-ascii?Q?6qywKzq3ItgpOB47D3t99bR8doU1lopvi4ycIVT0zKZsYf5oO6FshYx0MeHE?=
 =?us-ascii?Q?uumOnUcoGNwumHrBhJ3K6D2qAc39gE3QEhb46lY+Xjfw4mGenYYHe/eQwc9u?=
 =?us-ascii?Q?PvA4TrEC0jiu/E7TjTU+0hLsYrVtryq1TBJoimrtUoHLxbQza22g5QomHrA2?=
 =?us-ascii?Q?PeFkNg=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1aa7f892-0544-48fc-101e-08db2dfef485
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2023 13:35:25.3156 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wQ3Z4zH0377N7dgBvw/yNpvRJ2+8u7EGwBJkfycdWvsUoo2DPsaOI1Y7Rc6V+wwV/WMH/y90ArDpnPduR8FNd3e+3Yb/E+8gHAFMRAlrpZ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB4428
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hq7NfeHEzNJcF0gv7NEV0IQZihcVj+yjYmqlUe/C8xI=;
 b=Rt5RNQWtyEnJWLHDX+5YLGiWnjeK4CFNJCtAjaxDh9Yx6AYOPAuZ++HQ4cMgffqI3/YmZjd4Nm1xtQHID9wD9gsniEXSUtFk+LkTSdm1wRc7jq7yoIIHGdnG5MExZ75GpfWb37melfJEF/MYs5hMsD68dkf6pFusH0PvHUGOImA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=Rt5RNQWt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/8] ice: use
 pci_irq_vector helper function
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
Cc: michal.swiatkowski@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Mar 23, 2023 at 01:24:34PM +0100, Piotr Raczynski wrote:
> Currently, driver gets interrupt number directly from ice_pf::msix_entries
> array. Use helper function dedicated to do just that.
> 
> While at it use a variable to store interrupt number in
> ice_free_irq_msix_misc instead of calling the helper function twice.
> 
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
