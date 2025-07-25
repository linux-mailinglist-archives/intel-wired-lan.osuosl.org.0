Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B4EB12501
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Jul 2025 21:59:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E41AB617BC;
	Fri, 25 Jul 2025 19:59:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y5MwYjmDeJBJ; Fri, 25 Jul 2025 19:59:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2566361ACF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753473570;
	bh=ivya1EzVCbw0o4dYe+knkjWoez4RiejZxGf/to9ndCM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=My7b403AIXxcogF36jc3mQxar7pFx1jhzGYQ/y+IMSExfF+/rl6aykDqjNN7OIn7p
	 6BnyIpllvLC6pqbgyL3/T+0+zCIRoqH148wjdfhJLxB1Lk9czB8ZO1LX4GD3l1G+QN
	 lkW3lWguF1MBnL2sPqj5ZUgTag9mDQ076IpnUj+XkUAodkvkXhkLkMkDr3FFEhtlHy
	 nYnxtTygo1cQMXW0NWD49EQv8NqaJtBeS/qFEi9WoZ+3rcTW+s0z04m6cr1TFfS6x7
	 Lpjo3YfJ8t2+OJfmtoyOeiCiQdM4HHzauL2SCgFwtQkDAOpGwdYOmSTBHdWr7kOmU5
	 HX0NtVy+xSxeg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2566361ACF;
	Fri, 25 Jul 2025 19:59:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7EB7D177
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 11:40:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6583941AEB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 11:40:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B0FkBaZW3fSw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Jul 2025 11:40:34 +0000 (UTC)
X-Greylist: delayed 423 seconds by postgrey-1.37 at util1-new.osuosl.org;
 Fri, 25 Jul 2025 11:40:33 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0200E41B1B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0200E41B1B
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:1004:224b::b3; helo=out-179.mta0.migadu.com;
 envelope-from=kunwu.chan@linux.dev; receiver=<UNKNOWN> 
Received: from out-179.mta0.migadu.com (out-179.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::b3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0200E41B1B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Jul 2025 11:40:33 +0000 (UTC)
Message-ID: <c6f54d34-a22f-4533-a7d7-c991ae08d725@linux.dev>
Date: Fri, 25 Jul 2025 19:32:46 +0800
MIME-Version: 1.0
To: Jacob Keller <jacob.e.keller@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, netdev@vger.kernel.org
Cc: Simon Horman <horms@kernel.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Wang Haoran <haoranwangsec@gmail.com>,
 Amir Mohammad Jahangirzad <a.jahangirzad@gmail.com>
References: <20250722-jk-drop-debugfs-read-access-v1-1-27f13f08d406@intel.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Kunwu Chan <kunwu.chan@linux.dev>
In-Reply-To: <20250722-jk-drop-debugfs-read-access-v1-1-27f13f08d406@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Approved-At: Fri, 25 Jul 2025 19:59:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1753443207;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ivya1EzVCbw0o4dYe+knkjWoez4RiejZxGf/to9ndCM=;
 b=r1JcpPxADtHGVGoReqfDBE5+ELNMpeLSbXkrrGD8Pfrv/pkmjrzm2fDw9LBEFN3+F5myrI
 MEA4P20otqVnmY5o7bonVpnXcl6Ja/6iazkR5+mKmFzWgapjASMOfCnGPq57Xc+of7P8RR
 irYArmYtcdceD4dl6Sm0s4asX8OHfsk=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=r1JcpPxA
Subject: Re: [Intel-wired-lan] [PATCH] i40e: remove read access to debugfs
 files
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2025/7/23 08:14, Jacob Keller wrote:
> The 'command' and 'netdev_ops' debugfs files are a legacy debugging
> interface supported by the i40e driver since its early days by commit
> 02e9c290814c ("i40e: debugfs interface").
>
> Both of these debugfs files provide a read handler which is mostly useless,
> and which is implemented with questionable logic. They both use a static
> 256 byte buffer which is initialized to the empty string. In the case of
> the 'command' file this buffer is literally never used and simply wastes
> space. In the case of the 'netdev_ops' file, the last command written is
> saved here.
>
> On read, the files contents are presented as the name of the device
> followed by a colon and then the contents of their respective static
> buffer. For 'command' this will always be "<device>: ". For 'netdev_ops',
> this will be "<device>: <last command written>". But note the buffer is
> shared between all devices operated by this module. At best, it is mostly
> meaningless information, and at worse it could be accessed simultaneously
> as there doesn't appear to be any locking mechanism.
>
> We have also recently received multiple reports for both read functions
> about their use of snprintf and potential overflow that could result in
> reading arbitrary kernel memory. For the 'command' file, this is definitely
> impossible, since the static buffer is always zero and never written to.
> For the 'netdev_ops' file, it does appear to be possible, if the user
> carefully crafts the command input, it will be copied into the buffer,
> which could be large enough to cause snprintf to truncate, which then
> causes the copy_to_user to read beyond the length of the buffer allocated
> by kzalloc.
>
> A minimal fix would be to replace snprintf() with scnprintf() which would
> cap the return to the number of bytes written, preventing an overflow. A
> more involved fix would be to drop the mostly useless static buffers,
> saving 512 bytes and modifying the read functions to stop needing those as
> input.
>
> Instead, lets just completely drop the read access to these files. These
> are debug interfaces exposed as part of debugfs, and I don't believe that
> dropping read access will break any script, as the provided output is
> pretty useless. You can find the netdev name through other more standard
> interfaces, and the 'netdev_ops' interface can easily result in garbage if
> you issue simultaneous writes to multiple devices at once.
>
> In order to properly remove the i40e_dbg_netdev_ops_buf, we need to
> refactor its write function to avoid using the static buffer. Instead, use
> the same logic as the i40e_dbg_command_write, with an allocated buffer.
> Update the code to use this instead of the static buffer, and ensure we
> free the buffer on exit. This fixes simultaneous writes to 'netdev_ops' on
> multiple devices, and allows us to remove the now unused static buffer
> along with removing the read access.
>
> Reported-by: Kunwu Chan <chentao@kylinos.cn>
> Closes: https://lore.kernel.org/intel-wired-lan/20231208031950.47410-1-chentao@kylinos.cn/
> Reported-by: Wang Haoran <haoranwangsec@gmail.com>
> Closes: https://lore.kernel.org/all/CANZ3JQRRiOdtfQJoP9QM=6LS1Jto8PGBGw6y7-TL=BcnzHQn1Q@mail.gmail.com/
> Reported-by: Amir Mohammad Jahangirzad <a.jahangirzad@gmail.com>
> Closes: https://lore.kernel.org/all/20250722115017.206969-1-a.jahangirzad@gmail.com/
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> I found several reports of the issues with these read functions going at
> least as far back  as 2023, with suggestions to remove the read access even
> back then. None of the fixes got accepted or applied, but neither did Intel
> follow up with removing the interfaces. Its time to just drop the read
> access altogether.

Reviewed-by: Kunwu Chan <kunwu.chan@linux.dev>

> ---
>   drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 123 ++++---------------------
>   1 file changed, 19 insertions(+), 104 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> index 6cd9da662ae1..a5c794371dfe 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> @@ -40,48 +40,6 @@ static struct i40e_vsi *i40e_dbg_find_vsi(struct i40e_pf *pf, int seid)
>    * setup, adding or removing filters, or other things.  Many of
>    * these will be useful for some forms of unit testing.
>    **************************************************************/
> -static char i40e_dbg_command_buf[256] = "";
> -
> -/**
> - * i40e_dbg_command_read - read for command datum
> - * @filp: the opened file
> - * @buffer: where to write the data for the user to read
> - * @count: the size of the user's buffer
> - * @ppos: file position offset
> - **/
> -static ssize_t i40e_dbg_command_read(struct file *filp, char __user *buffer,
> -				     size_t count, loff_t *ppos)
> -{
> -	struct i40e_pf *pf = filp->private_data;
> -	struct i40e_vsi *main_vsi;
> -	int bytes_not_copied;
> -	int buf_size = 256;
> -	char *buf;
> -	int len;
> -
> -	/* don't allow partial reads */
> -	if (*ppos != 0)
> -		return 0;
> -	if (count < buf_size)
> -		return -ENOSPC;
> -
> -	buf = kzalloc(buf_size, GFP_KERNEL);
> -	if (!buf)
> -		return -ENOSPC;
> -
> -	main_vsi = i40e_pf_get_main_vsi(pf);
> -	len = snprintf(buf, buf_size, "%s: %s\n", main_vsi->netdev->name,
> -		       i40e_dbg_command_buf);
> -
> -	bytes_not_copied = copy_to_user(buffer, buf, len);
> -	kfree(buf);
> -
> -	if (bytes_not_copied)
> -		return -EFAULT;
> -
> -	*ppos = len;
> -	return len;
> -}
>   
>   static char *i40e_filter_state_string[] = {
>   	"INVALID",
> @@ -1621,7 +1579,6 @@ static ssize_t i40e_dbg_command_write(struct file *filp,
>   static const struct file_operations i40e_dbg_command_fops = {
>   	.owner = THIS_MODULE,
>   	.open =  simple_open,
> -	.read =  i40e_dbg_command_read,
>   	.write = i40e_dbg_command_write,
>   };
>   
> @@ -1630,48 +1587,6 @@ static const struct file_operations i40e_dbg_command_fops = {
>    * The netdev_ops entry in debugfs is for giving the driver commands
>    * to be executed from the netdev operations.
>    **************************************************************/
> -static char i40e_dbg_netdev_ops_buf[256] = "";
> -
> -/**
> - * i40e_dbg_netdev_ops_read - read for netdev_ops datum
> - * @filp: the opened file
> - * @buffer: where to write the data for the user to read
> - * @count: the size of the user's buffer
> - * @ppos: file position offset
> - **/
> -static ssize_t i40e_dbg_netdev_ops_read(struct file *filp, char __user *buffer,
> -					size_t count, loff_t *ppos)
> -{
> -	struct i40e_pf *pf = filp->private_data;
> -	struct i40e_vsi *main_vsi;
> -	int bytes_not_copied;
> -	int buf_size = 256;
> -	char *buf;
> -	int len;
> -
> -	/* don't allow partal reads */
> -	if (*ppos != 0)
> -		return 0;
> -	if (count < buf_size)
> -		return -ENOSPC;
> -
> -	buf = kzalloc(buf_size, GFP_KERNEL);
> -	if (!buf)
> -		return -ENOSPC;
> -
> -	main_vsi = i40e_pf_get_main_vsi(pf);
> -	len = snprintf(buf, buf_size, "%s: %s\n", main_vsi->netdev->name,
> -		       i40e_dbg_netdev_ops_buf);
> -
> -	bytes_not_copied = copy_to_user(buffer, buf, len);
> -	kfree(buf);
> -
> -	if (bytes_not_copied)
> -		return -EFAULT;
> -
> -	*ppos = len;
> -	return len;
> -}
>   
>   /**
>    * i40e_dbg_netdev_ops_write - write into netdev_ops datum
> @@ -1685,35 +1600,36 @@ static ssize_t i40e_dbg_netdev_ops_write(struct file *filp,
>   					 size_t count, loff_t *ppos)
>   {
>   	struct i40e_pf *pf = filp->private_data;
> +	char *cmd_buf, *buf_tmp;
>   	int bytes_not_copied;
>   	struct i40e_vsi *vsi;
> -	char *buf_tmp;
>   	int vsi_seid;
>   	int i, cnt;
>   
>   	/* don't allow partial writes */
>   	if (*ppos != 0)
>   		return 0;
> -	if (count >= sizeof(i40e_dbg_netdev_ops_buf))
> -		return -ENOSPC;
>   
> -	memset(i40e_dbg_netdev_ops_buf, 0, sizeof(i40e_dbg_netdev_ops_buf));
> -	bytes_not_copied = copy_from_user(i40e_dbg_netdev_ops_buf,
> -					  buffer, count);
> -	if (bytes_not_copied)
> +	cmd_buf = kzalloc(count + 1, GFP_KERNEL);
> +	if (!cmd_buf)
> +		return count;
> +	bytes_not_copied = copy_from_user(cmd_buf, buffer, count);
> +	if (bytes_not_copied) {
> +		kfree(cmd_buf);
>   		return -EFAULT;
> -	i40e_dbg_netdev_ops_buf[count] = '\0';
> +	}
> +	cmd_buf[count] = '\0';
>   
> -	buf_tmp = strchr(i40e_dbg_netdev_ops_buf, '\n');
> +	buf_tmp = strchr(cmd_buf, '\n');
>   	if (buf_tmp) {
>   		*buf_tmp = '\0';
> -		count = buf_tmp - i40e_dbg_netdev_ops_buf + 1;
> +		count = buf_tmp - cmd_buf + 1;
>   	}
>   
> -	if (strncmp(i40e_dbg_netdev_ops_buf, "change_mtu", 10) == 0) {
> +	if (strncmp(cmd_buf, "change_mtu", 10) == 0) {
>   		int mtu;
>   
> -		cnt = sscanf(&i40e_dbg_netdev_ops_buf[11], "%i %i",
> +		cnt = sscanf(&cmd_buf[11], "%i %i",
>   			     &vsi_seid, &mtu);
>   		if (cnt != 2) {
>   			dev_info(&pf->pdev->dev, "change_mtu <vsi_seid> <mtu>\n");
> @@ -1735,8 +1651,8 @@ static ssize_t i40e_dbg_netdev_ops_write(struct file *filp,
>   			dev_info(&pf->pdev->dev, "Could not acquire RTNL - please try again\n");
>   		}
>   
> -	} else if (strncmp(i40e_dbg_netdev_ops_buf, "set_rx_mode", 11) == 0) {
> -		cnt = sscanf(&i40e_dbg_netdev_ops_buf[11], "%i", &vsi_seid);
> +	} else if (strncmp(cmd_buf, "set_rx_mode", 11) == 0) {
> +		cnt = sscanf(&cmd_buf[11], "%i", &vsi_seid);
>   		if (cnt != 1) {
>   			dev_info(&pf->pdev->dev, "set_rx_mode <vsi_seid>\n");
>   			goto netdev_ops_write_done;
> @@ -1756,8 +1672,8 @@ static ssize_t i40e_dbg_netdev_ops_write(struct file *filp,
>   			dev_info(&pf->pdev->dev, "Could not acquire RTNL - please try again\n");
>   		}
>   
> -	} else if (strncmp(i40e_dbg_netdev_ops_buf, "napi", 4) == 0) {
> -		cnt = sscanf(&i40e_dbg_netdev_ops_buf[4], "%i", &vsi_seid);
> +	} else if (strncmp(cmd_buf, "napi", 4) == 0) {
> +		cnt = sscanf(&cmd_buf[4], "%i", &vsi_seid);
>   		if (cnt != 1) {
>   			dev_info(&pf->pdev->dev, "napi <vsi_seid>\n");
>   			goto netdev_ops_write_done;
> @@ -1775,21 +1691,20 @@ static ssize_t i40e_dbg_netdev_ops_write(struct file *filp,
>   			dev_info(&pf->pdev->dev, "napi called\n");
>   		}
>   	} else {
> -		dev_info(&pf->pdev->dev, "unknown command '%s'\n",
> -			 i40e_dbg_netdev_ops_buf);
> +		dev_info(&pf->pdev->dev, "unknown command '%s'\n", cmd_buf);
>   		dev_info(&pf->pdev->dev, "available commands\n");
>   		dev_info(&pf->pdev->dev, "  change_mtu <vsi_seid> <mtu>\n");
>   		dev_info(&pf->pdev->dev, "  set_rx_mode <vsi_seid>\n");
>   		dev_info(&pf->pdev->dev, "  napi <vsi_seid>\n");
>   	}
>   netdev_ops_write_done:
> +	kfree(cmd_buf);
>   	return count;
>   }
>   
>   static const struct file_operations i40e_dbg_netdev_ops_fops = {
>   	.owner = THIS_MODULE,
>   	.open = simple_open,
> -	.read = i40e_dbg_netdev_ops_read,
>   	.write = i40e_dbg_netdev_ops_write,
>   };
>   
>
> ---
> base-commit: cf074eca0065bc5142e6004ae236bb35a2687fdf
> change-id: 20250722-jk-drop-debugfs-read-access-994721875248
>
> Best regards,
> --
> Jacob Keller <jacob.e.keller@intel.com>
>
-- 
Thanks,
        TAO.
---
“Life finds a way.”

