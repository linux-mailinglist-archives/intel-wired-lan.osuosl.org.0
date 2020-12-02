Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A501E2CC788
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Dec 2020 21:12:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5AB9787A3A;
	Wed,  2 Dec 2020 20:12:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EiH5VdtbxlwZ; Wed,  2 Dec 2020 20:12:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C3BD087A2C;
	Wed,  2 Dec 2020 20:12:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 300591BF3DE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 20:12:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D3714203AF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 20:12:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hGvGGsIYDsJz for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Dec 2020 20:12:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 2E7761FEED
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 20:12:49 +0000 (UTC)
Date: Wed, 2 Dec 2020 14:12:46 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1606939968;
 bh=Iykhya6FOdK4tHivQlBpTlZS4zh7Oi+Xg4iRs0sIZ4A=;
 h=From:To:Cc:Subject:In-Reply-To:From;
 b=igL4lgZ9kTsNKazSQtXmu63EG+hgbA7n6BI0M9Tc5C8btJ9lzuL5IJnymKudUfRuA
 QmyoRaK75Wyh4eOdGuu8Zx2T5FrQBk2curt2fTH69RwxzqV8PrK21fPdLI+zON9cQ+
 IWxc1NFpiZrRM6dcdh0fz0u+4+u59YU7m4iR52CRqmtvN/hdokkROXutCbEXsCftpC
 IjJmFOOhNIMb7SJsg5XDI5fgc13Lt/G0+ehV4yJAzy6NKuDRdmcn/w8xq1EORWV6oS
 EIRZY+/rZtxkvTt+CAzPHJ4f47mQG5e6k8qfQf4JhVOnqeUjRKsYt4aPmobfOdjbWg
 HGJ/lapMFHBzg==
From: Bjorn Helgaas <helgaas@kernel.org>
To: Mario Limonciello <mario.limonciello@dell.com>
Message-ID: <20201202201246.GA1467134@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201202161748.128938-5-mario.limonciello@dell.com>
Subject: Re: [Intel-wired-lan] [PATCH v2 4/5] e1000e: Add more Dell CML
 systems into s0ix heuristics
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
Cc: Linux PM <linux-pm@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 Perry.Yuan@dell.com, Yijun.Shen@dell.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 David Miller <davem@davemloft.net>, Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

s/s0ix/S0ix/ in subject.

On Wed, Dec 02, 2020 at 10:17:47AM -0600, Mario Limonciello wrote:
> These comet lake systems are not yet released, but have been validated
> on pre-release hardware.

s/comet lake/Comet Lake/ to match previous usage in patch 3/5.

> This is being submitted separately from released hardware in case of
> a regression between pre-release and release hardware so this commit
> can be reverted alone.
> 
> Tested-by: Yijun Shen <yijun.shen@dell.com>
> Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
> ---
>  drivers/net/ethernet/intel/e1000e/s0ix.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/s0ix.c b/drivers/net/ethernet/intel/e1000e/s0ix.c
> index 74043e80c32f..0dd2e2702ebb 100644
> --- a/drivers/net/ethernet/intel/e1000e/s0ix.c
> +++ b/drivers/net/ethernet/intel/e1000e/s0ix.c
> @@ -60,6 +60,9 @@ static bool e1000e_check_subsystem_allowlist(struct pci_dev *dev)
>  		case 0x09c2: /* Precision 3551 */
>  		case 0x09c3: /* Precision 7550 */
>  		case 0x09c4: /* Precision 7750 */
> +		case 0x0a40: /* Notebook 0x0a40 */
> +		case 0x0a41: /* Notebook 0x0a41 */
> +		case 0x0a42: /* Notebook 0x0a42 */
>  			return true;
>  		}
>  	}
> -- 
> 2.25.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
